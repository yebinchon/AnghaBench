
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int alloc; int used; int* dp; int sign; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int DIGIT_BIT ;
 int MP_MASK ;
 int MP_OKAY ;
 int mp_grow (TYPE_1__*,int) ;

__attribute__((used)) static int mp_mul_2(const mp_int * a, mp_int * b)
{
  int x, res, oldused;


  if (b->alloc < a->used + 1) {
    if ((res = mp_grow (b, a->used + 1)) != MP_OKAY) {
      return res;
    }
  }

  oldused = b->used;
  b->used = a->used;

  {
    register mp_digit r, rr, *tmpa, *tmpb;


    tmpa = a->dp;


    tmpb = b->dp;


    r = 0;
    for (x = 0; x < a->used; x++) {




      rr = *tmpa >> ((mp_digit)(DIGIT_BIT - 1));


      *tmpb++ = ((*tmpa++ << ((mp_digit)1)) | r) & MP_MASK;




      r = rr;
    }


    if (r != 0) {

      *tmpb = 1;
      ++(b->used);
    }




    tmpb = b->dp + b->used;
    for (x = b->used; x < oldused; x++) {
      *tmpb++ = 0;
    }
  }
  b->sign = a->sign;
  return MP_OKAY;
}
