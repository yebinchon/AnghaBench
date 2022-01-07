
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_41__ {int used; int* dp; } ;
typedef TYPE_1__ const mp_int ;
typedef int mp_digit ;


 int CHAR_BIT ;
 int DIGIT_BIT ;
 int MP_OKAY ;
 int MP_WARRAY ;
 int fast_mp_montgomery_reduce (TYPE_1__ const*,TYPE_1__ const*,int) ;
 int mp_clear (TYPE_1__ const*) ;
 int mp_copy (TYPE_1__ const*,TYPE_1__ const*) ;
 int mp_count_bits (TYPE_1__ const*) ;
 int mp_dr_reduce (TYPE_1__ const*,TYPE_1__ const*,int) ;
 int mp_dr_setup (TYPE_1__ const*,int*) ;
 int mp_exch (TYPE_1__ const*,TYPE_1__ const*) ;
 int mp_init (TYPE_1__ const*) ;
 int mp_mod (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int mp_montgomery_calc_normalization (TYPE_1__ const*,TYPE_1__ const*) ;
 int mp_montgomery_reduce (TYPE_1__ const*,TYPE_1__ const*,int) ;
 int mp_montgomery_setup (TYPE_1__ const*,int*) ;
 int mp_mul (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int mp_mulmod (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int mp_reduce_2k (TYPE_1__ const*,TYPE_1__ const*,int) ;
 int mp_reduce_2k_setup (TYPE_1__ const*,int*) ;
 int mp_set (TYPE_1__ const*,int) ;
 int mp_sqr (TYPE_1__ const*,TYPE_1__ const*) ;

int
mp_exptmod_fast (const mp_int * G, const mp_int * X, mp_int * P, mp_int * Y, int redmode)
{
  mp_int M[256], res;
  mp_digit buf, mp;
  int err, bitbuf, bitcpy, bitcnt, mode, digidx, x, y, winsize;





  int (*redux)(mp_int*,const mp_int*,mp_digit);


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


  if (redmode == 0) {

     if ((err = mp_montgomery_setup (P, &mp)) != MP_OKAY) {
        goto __M;
     }


     if (((P->used * 2 + 1) < MP_WARRAY) &&
          P->used < (1 << ((CHAR_BIT * sizeof (mp_word)) - (2 * DIGIT_BIT)))) {
        redux = fast_mp_montgomery_reduce;
     } else {

        redux = mp_montgomery_reduce;
     }
  } else if (redmode == 1) {

     mp_dr_setup(P, &mp);
     redux = mp_dr_reduce;
  } else {

     if ((err = mp_reduce_2k_setup(P, &mp)) != MP_OKAY) {
        goto __M;
     }
     redux = mp_reduce_2k;
  }


  if ((err = mp_init (&res)) != MP_OKAY) {
    goto __M;
  }
  if (redmode == 0) {

     if ((err = mp_montgomery_calc_normalization (&res, P)) != MP_OKAY) {
       goto __RES;
     }


     if ((err = mp_mulmod (G, &res, P, &M[1])) != MP_OKAY) {
       goto __RES;
     }
  } else {
     mp_set(&res, 1);
     if ((err = mp_mod(G, P, &M[1])) != MP_OKAY) {
        goto __RES;
     }
  }


  if ((err = mp_copy (&M[1], &M[1 << (winsize - 1)])) != MP_OKAY) {
    goto __RES;
  }

  for (x = 0; x < (winsize - 1); x++) {
    if ((err = mp_sqr (&M[1 << (winsize - 1)], &M[1 << (winsize - 1)])) != MP_OKAY) {
      goto __RES;
    }
    if ((err = redux (&M[1 << (winsize - 1)], P, mp)) != MP_OKAY) {
      goto __RES;
    }
  }


  for (x = (1 << (winsize - 1)) + 1; x < (1 << winsize); x++) {
    if ((err = mp_mul (&M[x - 1], &M[1], &M[x])) != MP_OKAY) {
      goto __RES;
    }
    if ((err = redux (&M[x], P, mp)) != MP_OKAY) {
      goto __RES;
    }
  }


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


    y = (buf >> (DIGIT_BIT - 1)) & 1;
    buf <<= (mp_digit)1;






    if (mode == 0 && y == 0) {
      continue;
    }


    if (mode == 1 && y == 0) {
      if ((err = mp_sqr (&res, &res)) != MP_OKAY) {
        goto __RES;
      }
      if ((err = redux (&res, P, mp)) != MP_OKAY) {
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
        if ((err = redux (&res, P, mp)) != MP_OKAY) {
          goto __RES;
        }
      }


      if ((err = mp_mul (&res, &M[bitbuf], &res)) != MP_OKAY) {
        goto __RES;
      }
      if ((err = redux (&res, P, mp)) != MP_OKAY) {
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
      if ((err = redux (&res, P, mp)) != MP_OKAY) {
        goto __RES;
      }


      bitbuf <<= 1;
      if ((bitbuf & (1 << winsize)) != 0) {

        if ((err = mp_mul (&res, &M[1], &res)) != MP_OKAY) {
          goto __RES;
        }
        if ((err = redux (&res, P, mp)) != MP_OKAY) {
          goto __RES;
        }
      }
    }
  }

  if (redmode == 0) {






     if ((err = redux(&res, P, mp)) != MP_OKAY) {
       goto __RES;
     }
  }


  mp_exch (&res, Y);
  err = MP_OKAY;
__RES:mp_clear (&res);
__M:
  mp_clear(&M[1]);
  for (x = 1<<(winsize-1); x < (1 << winsize); x++) {
    mp_clear (&M[x]);
  }
  return err;
}
