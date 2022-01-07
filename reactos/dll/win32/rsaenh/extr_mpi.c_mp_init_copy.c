
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;


 int MP_OKAY ;
 int mp_copy (int const*,int *) ;
 int mp_init (int *) ;

int mp_init_copy (mp_int * a, const mp_int * b)
{
  int res;

  if ((res = mp_init (a)) != MP_OKAY) {
    return res;
  }
  return mp_copy (b, a);
}
