NB. Cycle-detecting ^:a: (monad). Works only on numeric atoms.
NB. 
NB. The parens around ".@'y'M. are significant for enabling PPPP; see
NB. https://code.jsoftware.com/wiki/Vocabulary/SpecialCombinations.
NB. This way, the M. table's state isn't reset every time we enter is_new.
memo_pow=: {."1@{{
  is_new=. {. = {: {{(".@'y'M.) x}} {.
  (, u.)@{:^:(is_new f.)^:a:@(, u.)
}}
