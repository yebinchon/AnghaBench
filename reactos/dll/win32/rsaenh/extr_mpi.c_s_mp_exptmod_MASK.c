#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int used; int* dp; } ;
typedef  TYPE_1__ mp_int ;
typedef  int mp_digit ;

/* Variables and functions */
 int DIGIT_BIT ; 
 int MP_OKAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__ const*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC11 (const mp_int * G, const mp_int * X, mp_int * P, mp_int * Y)
{
  mp_int  M[256], res, mu;
  mp_digit buf;
  int     err, bitbuf, bitcpy, bitcnt, mode, digidx, x, y, winsize;

  /* find window size */
  x = FUNC2 (X);
  if (x <= 7) {
    winsize = 2;
  } else if (x <= 36) {
    winsize = 3;
  } else if (x <= 140) {
    winsize = 4;
  } else if (x <= 450) {
    winsize = 5;
  } else if (x <= 1303) {
    winsize = 6;
  } else if (x <= 3529) {
    winsize = 7;
  } else {
    winsize = 8;
  }

  /* init M array */
  /* init first cell */
  if ((err = FUNC4(&M[1])) != MP_OKAY) {
     return err; 
  }

  /* now init the second half of the array */
  for (x = 1<<(winsize-1); x < (1 << winsize); x++) {
    if ((err = FUNC4(&M[x])) != MP_OKAY) {
      for (y = 1<<(winsize-1); y < x; y++) {
        FUNC0 (&M[y]);
      }
      FUNC0(&M[1]);
      return err;
    }
  }

  /* create mu, used for Barrett reduction */
  if ((err = FUNC4 (&mu)) != MP_OKAY) {
    goto __M;
  }
  if ((err = FUNC8 (&mu, P)) != MP_OKAY) {
    goto __MU;
  }

  /* create M table
   *
   * The M table contains powers of the base, 
   * e.g. M[x] = G**x mod P
   *
   * The first half of the table is not 
   * computed though accept for M[0] and M[1]
   */
  if ((err = FUNC5 (G, P, &M[1])) != MP_OKAY) {
    goto __MU;
  }

  /* compute the value at M[1<<(winsize-1)] by squaring 
   * M[1] (winsize-1) times 
   */
  if ((err = FUNC1 (&M[1], &M[1 << (winsize - 1)])) != MP_OKAY) {
    goto __MU;
  }

  for (x = 0; x < (winsize - 1); x++) {
    if ((err = FUNC10 (&M[1 << (winsize - 1)], 
                       &M[1 << (winsize - 1)])) != MP_OKAY) {
      goto __MU;
    }
    if ((err = FUNC7 (&M[1 << (winsize - 1)], P, &mu)) != MP_OKAY) {
      goto __MU;
    }
  }

  /* create upper table, that is M[x] = M[x-1] * M[1] (mod P)
   * for x = (2**(winsize - 1) + 1) to (2**winsize - 1)
   */
  for (x = (1 << (winsize - 1)) + 1; x < (1 << winsize); x++) {
    if ((err = FUNC6 (&M[x - 1], &M[1], &M[x])) != MP_OKAY) {
      goto __MU;
    }
    if ((err = FUNC7 (&M[x], P, &mu)) != MP_OKAY) {
      goto __MU;
    }
  }

  /* setup result */
  if ((err = FUNC4 (&res)) != MP_OKAY) {
    goto __MU;
  }
  FUNC9 (&res, 1);

  /* set initial mode and bit cnt */
  mode   = 0;
  bitcnt = 1;
  buf    = 0;
  digidx = X->used - 1;
  bitcpy = 0;
  bitbuf = 0;

  for (;;) {
    /* grab next digit as required */
    if (--bitcnt == 0) {
      /* if digidx == -1 we are out of digits */
      if (digidx == -1) {
        break;
      }
      /* read next digit and reset the bitcnt */
      buf    = X->dp[digidx--];
      bitcnt = DIGIT_BIT;
    }

    /* grab the next msb from the exponent */
    y     = (buf >> (mp_digit)(DIGIT_BIT - 1)) & 1;
    buf <<= (mp_digit)1;

    /* if the bit is zero and mode == 0 then we ignore it
     * These represent the leading zero bits before the first 1 bit
     * in the exponent.  Technically this opt is not required but it
     * does lower the # of trivial squaring/reductions used
     */
    if (mode == 0 && y == 0) {
      continue;
    }

    /* if the bit is zero and mode == 1 then we square */
    if (mode == 1 && y == 0) {
      if ((err = FUNC10 (&res, &res)) != MP_OKAY) {
        goto __RES;
      }
      if ((err = FUNC7 (&res, P, &mu)) != MP_OKAY) {
        goto __RES;
      }
      continue;
    }

    /* else we add it to the window */
    bitbuf |= (y << (winsize - ++bitcpy));
    mode    = 2;

    if (bitcpy == winsize) {
      /* ok window is filled so square as required and multiply  */
      /* square first */
      for (x = 0; x < winsize; x++) {
        if ((err = FUNC10 (&res, &res)) != MP_OKAY) {
          goto __RES;
        }
        if ((err = FUNC7 (&res, P, &mu)) != MP_OKAY) {
          goto __RES;
        }
      }

      /* then multiply */
      if ((err = FUNC6 (&res, &M[bitbuf], &res)) != MP_OKAY) {
        goto __RES;
      }
      if ((err = FUNC7 (&res, P, &mu)) != MP_OKAY) {
        goto __RES;
      }

      /* empty window and reset */
      bitcpy = 0;
      bitbuf = 0;
      mode   = 1;
    }
  }

  /* if bits remain then square/multiply */
  if (mode == 2 && bitcpy > 0) {
    /* square then multiply if the bit is set */
    for (x = 0; x < bitcpy; x++) {
      if ((err = FUNC10 (&res, &res)) != MP_OKAY) {
        goto __RES;
      }
      if ((err = FUNC7 (&res, P, &mu)) != MP_OKAY) {
        goto __RES;
      }

      bitbuf <<= 1;
      if ((bitbuf & (1 << winsize)) != 0) {
        /* then multiply */
        if ((err = FUNC6 (&res, &M[1], &res)) != MP_OKAY) {
          goto __RES;
        }
        if ((err = FUNC7 (&res, P, &mu)) != MP_OKAY) {
          goto __RES;
        }
      }
    }
  }

  FUNC3 (&res, Y);
  err = MP_OKAY;
__RES:FUNC0 (&res);
__MU:FUNC0 (&mu);
__M:
  FUNC0(&M[1]);
  for (x = 1<<(winsize-1); x < (1 << winsize); x++) {
    FUNC0 (&M[x]);
  }
  return err;
}