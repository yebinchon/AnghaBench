
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;


 scalar_t__ MP_EQ ;
 int MP_NO ;
 int MP_OKAY ;
 int MP_VAL ;
 int MP_YES ;
 int PRIME_SIZE ;
 int * __prime_tab ;
 int mp_clear (int *) ;
 scalar_t__ mp_cmp_d (int *,int ) ;
 int mp_init (int *) ;
 int mp_prime_is_divisible (int *,int*) ;
 int mp_prime_miller_rabin (int *,int *,int*) ;
 int mp_set (int *,int ) ;

__attribute__((used)) static int mp_prime_is_prime (mp_int * a, int t, int *result)
{
  mp_int b;
  int ix, err, res;


  *result = MP_NO;


  if (t <= 0 || t > PRIME_SIZE) {
    return MP_VAL;
  }


  for (ix = 0; ix < PRIME_SIZE; ix++) {
      if (mp_cmp_d(a, __prime_tab[ix]) == MP_EQ) {
         *result = 1;
         return MP_OKAY;
      }
  }


  if ((err = mp_prime_is_divisible (a, &res)) != MP_OKAY) {
    return err;
  }


  if (res == MP_YES) {
    return MP_OKAY;
  }


  if ((err = mp_init (&b)) != MP_OKAY) {
    return err;
  }

  for (ix = 0; ix < t; ix++) {

    mp_set (&b, __prime_tab[ix]);

    if ((err = mp_prime_miller_rabin (a, &b, &res)) != MP_OKAY) {
      goto __B;
    }

    if (res == MP_NO) {
      goto __B;
    }
  }


  *result = MP_YES;
__B:mp_clear (&b);
  return err;
}
