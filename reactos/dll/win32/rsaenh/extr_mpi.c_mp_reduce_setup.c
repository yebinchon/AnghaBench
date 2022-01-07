
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int used; } ;
typedef TYPE_1__ mp_int ;


 int DIGIT_BIT ;
 int MP_OKAY ;
 int mp_2expt (TYPE_1__*,int) ;
 int mp_div (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,int *) ;

int mp_reduce_setup (mp_int * a, const mp_int * b)
{
  int res;

  if ((res = mp_2expt (a, b->used * 2 * DIGIT_BIT)) != MP_OKAY) {
    return res;
  }
  return mp_div (a, b, a, ((void*)0));
}
