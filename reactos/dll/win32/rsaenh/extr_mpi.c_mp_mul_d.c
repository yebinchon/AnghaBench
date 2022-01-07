
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_6__ {int alloc; int used; void** dp; int sign; } ;
typedef TYPE_1__ mp_int ;
typedef void* mp_digit ;


 scalar_t__ DIGIT_BIT ;
 scalar_t__ MP_MASK ;
 int MP_OKAY ;
 int mp_clamp (TYPE_1__*) ;
 int mp_grow (TYPE_1__*,int) ;

__attribute__((used)) static int
mp_mul_d (const mp_int * a, mp_digit b, mp_int * c)
{
  mp_digit u, *tmpa, *tmpc;
  mp_word r;
  int ix, res, olduse;


  if (c->alloc < a->used + 1) {
    if ((res = mp_grow (c, a->used + 1)) != MP_OKAY) {
      return res;
    }
  }


  olduse = c->used;


  c->sign = a->sign;


  tmpa = a->dp;


  tmpc = c->dp;


  u = 0;


  for (ix = 0; ix < a->used; ix++) {

    r = ((mp_word) u) + ((mp_word)*tmpa++) * ((mp_word)b);


    *tmpc++ = (mp_digit) (r & ((mp_word) MP_MASK));


    u = (mp_digit) (r >> ((mp_word) DIGIT_BIT));
  }


  *tmpc++ = u;


  while (ix++ < olduse) {
     *tmpc++ = 0;
  }


  c->used = a->used + 1;
  mp_clamp(c);

  return MP_OKAY;
}
