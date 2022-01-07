
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;
typedef scalar_t__ mp_digit ;


 int MP_NO ;
 int MP_OKAY ;
 int MP_YES ;
 int PRIME_SIZE ;
 int * __prime_tab ;
 int mp_mod_d (int const*,int ,scalar_t__*) ;

__attribute__((used)) static int mp_prime_is_divisible (const mp_int * a, int *result)
{
  int err, ix;
  mp_digit res;


  *result = MP_NO;

  for (ix = 0; ix < PRIME_SIZE; ix++) {

    if ((err = mp_mod_d (a, __prime_tab[ix], &res)) != MP_OKAY) {
      return err;
    }


    if (res == 0) {
      *result = MP_YES;
      return MP_OKAY;
    }
  }

  return MP_OKAY;
}
