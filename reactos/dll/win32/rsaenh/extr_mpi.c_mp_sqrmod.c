
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;


 int MP_OKAY ;
 int mp_clear (int *) ;
 int mp_init (int *) ;
 int mp_mod (int *,int *,int *) ;
 int mp_sqr (int const*,int *) ;

int
mp_sqrmod (const mp_int * a, mp_int * b, mp_int * c)
{
  int res;
  mp_int t;

  if ((res = mp_init (&t)) != MP_OKAY) {
    return res;
  }

  if ((res = mp_sqr (a, &t)) != MP_OKAY) {
    mp_clear (&t);
    return res;
  }
  res = mp_mod (&t, b, c);
  mp_clear (&t);
  return res;
}
