
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_27__ {int used; int* dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int DIGIT_BIT ;
 int MP_OKAY ;
 int mp_clear (TYPE_1__*) ;
 int mp_copy (TYPE_1__*,TYPE_1__*) ;
 int mp_count_bits (TYPE_1__ const*) ;
 int mp_exch (TYPE_1__*,TYPE_1__*) ;
 int mp_init (TYPE_1__*) ;
 int mp_mod (TYPE_1__ const*,TYPE_1__*,TYPE_1__*) ;
 int mp_mul (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int mp_reduce (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int mp_reduce_setup (TYPE_1__*,TYPE_1__*) ;
 int mp_set (TYPE_1__*,int) ;
 int mp_sqr (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int s_mp_exptmod (const mp_int * G, const mp_int * X, mp_int * P, mp_int * Y)
{
  mp_int M[256], res, mu;
  mp_digit buf;
  int err, bitbuf, bitcpy, bitcnt, mode, digidx, x, y, winsize;


  x = mp_count_bits (X);
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



  if ((err = mp_init(&M[1])) != MP_OKAY) {
     return err;
  }


  for (x = 1<<(winsize-1); x < (1 << winsize); x++) {
    if ((err = mp_init(&M[x])) != MP_OKAY) {
      for (y = 1<<(winsize-1); y < x; y++) {
        mp_clear (&M[y]);
      }
      mp_clear(&M[1]);
      return err;
    }
  }


  if ((err = mp_init (&mu)) != MP_OKAY) {
    goto __M;
  }
  if ((err = mp_reduce_setup (&mu, P)) != MP_OKAY) {
    goto __MU;
  }
  if ((err = mp_mod (G, P, &M[1])) != MP_OKAY) {
    goto __MU;
  }




  if ((err = mp_copy (&M[1], &M[1 << (winsize - 1)])) != MP_OKAY) {
    goto __MU;
  }

  for (x = 0; x < (winsize - 1); x++) {
    if ((err = mp_sqr (&M[1 << (winsize - 1)],
                       &M[1 << (winsize - 1)])) != MP_OKAY) {
      goto __MU;
    }
    if ((err = mp_reduce (&M[1 << (winsize - 1)], P, &mu)) != MP_OKAY) {
      goto __MU;
    }
  }




  for (x = (1 << (winsize - 1)) + 1; x < (1 << winsize); x++) {
    if ((err = mp_mul (&M[x - 1], &M[1], &M[x])) != MP_OKAY) {
      goto __MU;
    }
    if ((err = mp_reduce (&M[x], P, &mu)) != MP_OKAY) {
      goto __MU;
    }
  }


  if ((err = mp_init (&res)) != MP_OKAY) {
    goto __MU;
  }
  mp_set (&res, 1);


  mode = 0;
  bitcnt = 1;
  buf = 0;
  digidx = X->used - 1;
  bitcpy = 0;
  bitbuf = 0;

  for (;;) {

    if (--bitcnt == 0) {

      if (digidx == -1) {
        break;
      }

      buf = X->dp[digidx--];
      bitcnt = DIGIT_BIT;
    }


    y = (buf >> (mp_digit)(DIGIT_BIT - 1)) & 1;
    buf <<= (mp_digit)1;






    if (mode == 0 && y == 0) {
      continue;
    }


    if (mode == 1 && y == 0) {
      if ((err = mp_sqr (&res, &res)) != MP_OKAY) {
        goto __RES;
      }
      if ((err = mp_reduce (&res, P, &mu)) != MP_OKAY) {
        goto __RES;
      }
      continue;
    }


    bitbuf |= (y << (winsize - ++bitcpy));
    mode = 2;

    if (bitcpy == winsize) {


      for (x = 0; x < winsize; x++) {
        if ((err = mp_sqr (&res, &res)) != MP_OKAY) {
          goto __RES;
        }
        if ((err = mp_reduce (&res, P, &mu)) != MP_OKAY) {
          goto __RES;
        }
      }


      if ((err = mp_mul (&res, &M[bitbuf], &res)) != MP_OKAY) {
        goto __RES;
      }
      if ((err = mp_reduce (&res, P, &mu)) != MP_OKAY) {
        goto __RES;
      }


      bitcpy = 0;
      bitbuf = 0;
      mode = 1;
    }
  }


  if (mode == 2 && bitcpy > 0) {

    for (x = 0; x < bitcpy; x++) {
      if ((err = mp_sqr (&res, &res)) != MP_OKAY) {
        goto __RES;
      }
      if ((err = mp_reduce (&res, P, &mu)) != MP_OKAY) {
        goto __RES;
      }

      bitbuf <<= 1;
      if ((bitbuf & (1 << winsize)) != 0) {

        if ((err = mp_mul (&res, &M[1], &res)) != MP_OKAY) {
          goto __RES;
        }
        if ((err = mp_reduce (&res, P, &mu)) != MP_OKAY) {
          goto __RES;
        }
      }
    }
  }

  mp_exch (&res, Y);
  err = MP_OKAY;
__RES:mp_clear (&res);
__MU:mp_clear (&mu);
__M:
  mp_clear(&M[1]);
  for (x = 1<<(winsize-1); x < (1 << winsize); x++) {
    mp_clear (&M[x]);
  }
  return err;
}
