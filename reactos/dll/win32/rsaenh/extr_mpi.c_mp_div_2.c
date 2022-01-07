
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int alloc; int used; int* dp; int sign; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int DIGIT_BIT ;
 int MP_OKAY ;
 int mp_clamp (TYPE_1__*) ;
 int mp_grow (TYPE_1__*,int) ;

__attribute__((used)) static int mp_div_2(const mp_int * a, mp_int * b)
{
  int x, res, oldused;


  if (b->alloc < a->used) {
    if ((res = mp_grow (b, a->used)) != MP_OKAY) {
      return res;
    }
  }

  oldused = b->used;
  b->used = a->used;
  {
    register mp_digit r, rr, *tmpa, *tmpb;


    tmpa = a->dp + b->used - 1;


    tmpb = b->dp + b->used - 1;


    r = 0;
    for (x = b->used - 1; x >= 0; x--) {

      rr = *tmpa & 1;


      *tmpb-- = (*tmpa-- >> 1) | (r << (DIGIT_BIT - 1));


      r = rr;
    }


    tmpb = b->dp + b->used;
    for (x = b->used; x < oldused; x++) {
      *tmpb++ = 0;
    }
  }
  b->sign = a->sign;
  mp_clamp (b);
  return MP_OKAY;
}
