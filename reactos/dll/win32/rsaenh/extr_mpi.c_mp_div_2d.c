
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int* dp; int used; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int DIGIT_BIT ;
 int MP_OKAY ;
 int mp_clamp (TYPE_1__*) ;
 int mp_clear (TYPE_1__*) ;
 int mp_copy (TYPE_1__ const*,TYPE_1__*) ;
 int mp_exch (TYPE_1__*,TYPE_1__*) ;
 int mp_init (TYPE_1__*) ;
 int mp_mod_2d (TYPE_1__ const*,int,TYPE_1__*) ;
 int mp_rshd (TYPE_1__*,int) ;
 int mp_zero (TYPE_1__*) ;

__attribute__((used)) static int mp_div_2d (const mp_int * a, int b, mp_int * c, mp_int * d)
{
  mp_digit D, r, rr;
  int x, res;
  mp_int t;



  if (b <= 0) {
    res = mp_copy (a, c);
    if (d != ((void*)0)) {
      mp_zero (d);
    }
    return res;
  }

  if ((res = mp_init (&t)) != MP_OKAY) {
    return res;
  }


  if (d != ((void*)0)) {
    if ((res = mp_mod_2d (a, b, &t)) != MP_OKAY) {
      mp_clear (&t);
      return res;
    }
  }


  if ((res = mp_copy (a, c)) != MP_OKAY) {
    mp_clear (&t);
    return res;
  }


  if (b >= DIGIT_BIT) {
    mp_rshd (c, b / DIGIT_BIT);
  }


  D = (mp_digit) (b % DIGIT_BIT);
  if (D != 0) {
    register mp_digit *tmpc, mask, shift;


    mask = (((mp_digit)1) << D) - 1;


    shift = DIGIT_BIT - D;


    tmpc = c->dp + (c->used - 1);


    r = 0;
    for (x = c->used - 1; x >= 0; x--) {

      rr = *tmpc & mask;


      *tmpc = (*tmpc >> D) | (r << shift);
      --tmpc;


      r = rr;
    }
  }
  mp_clamp (c);
  if (d != ((void*)0)) {
    mp_exch (&t, d);
  }
  mp_clear (&t);
  return MP_OKAY;
}
