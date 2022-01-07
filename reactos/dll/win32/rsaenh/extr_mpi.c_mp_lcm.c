
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int sign; } ;
typedef TYPE_1__ mp_int ;


 scalar_t__ MP_LT ;
 int MP_OKAY ;
 int MP_ZPOS ;
 int mp_clear_multi (TYPE_1__*,TYPE_1__*,int *) ;
 scalar_t__ mp_cmp_mag (TYPE_1__ const*,TYPE_1__ const*) ;
 int mp_div (TYPE_1__ const*,TYPE_1__*,TYPE_1__*,int *) ;
 int mp_gcd (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*) ;
 int mp_init_multi (TYPE_1__*,TYPE_1__*,int *) ;
 int mp_mul (TYPE_1__ const*,TYPE_1__*,TYPE_1__*) ;

int mp_lcm (const mp_int * a, const mp_int * b, mp_int * c)
{
  int res;
  mp_int t1, t2;


  if ((res = mp_init_multi (&t1, &t2, ((void*)0))) != MP_OKAY) {
    return res;
  }


  if ((res = mp_gcd (a, b, &t1)) != MP_OKAY) {
    goto __T;
  }


  if (mp_cmp_mag(a, b) == MP_LT) {

     if ((res = mp_div(a, &t1, &t2, ((void*)0))) != MP_OKAY) {
        goto __T;
     }
     res = mp_mul(b, &t2, c);
  } else {

     if ((res = mp_div(b, &t1, &t2, ((void*)0))) != MP_OKAY) {
        goto __T;
     }
     res = mp_mul(a, &t2, c);
  }


  c->sign = MP_ZPOS;

__T:
  mp_clear_multi (&t1, &t2, ((void*)0));
  return res;
}
