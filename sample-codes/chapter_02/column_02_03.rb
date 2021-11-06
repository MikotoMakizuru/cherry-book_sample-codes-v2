# コラム：小数を使う場合は丸め誤差に注意

0.1 * 3.0 #=> 0.30000000000000004

# ----------------------------------------

0.1 * 3.0 == 0.3 #=> false
0.1 * 3.0 <= 0.3 #=> false

# ----------------------------------------

# Rationalクラスを使うと小数ではなく「10分の3」という計算結果が返る
0.1r * 3.0r #=> (3/10)

# Rationalクラスであれば期待した通りに値の比較ができる
0.1r * 3r == 0.3 #=> true

0.1r * 3r <= 0.3 #=> true

# ----------------------------------------

a = 0.1
b = 3.0
a.rationalize * b.rationalize #=> (3/10)

# ----------------------------------------

(0.1r * 3.0r).to_f #=> 0.3

# ----------------------------------------

require 'bigdecimal'

(BigDecimal("0.1") * BigDecimal("3.0")).to_f #=> 0.3
