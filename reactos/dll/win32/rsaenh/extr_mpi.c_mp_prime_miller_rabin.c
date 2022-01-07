
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const mp_int ;


 scalar_t__ MP_EQ ;
 scalar_t__ MP_GT ;
 int MP_NO ;
 int MP_OKAY ;
 int MP_VAL ;
 int MP_YES ;
 int mp_clear (int const*) ;
 scalar_t__ mp_cmp (int const*,int const*) ;
 scalar_t__ mp_cmp_d (int const*,int) ;
 int mp_cnt_lsb (int const*) ;
 int mp_div_2d (int const*,int,int const*,int *) ;
 int mp_exptmod (int const*,int const*,int const*,int const*) ;
 int mp_init (int const*) ;
 int mp_init_copy (int const*,int const*) ;
 int mp_sqrmod (int const*,int const*,int const*) ;
 int mp_sub_d (int const*,int,int const*) ;

__attribute__((used)) static int mp_prime_miller_rabin (mp_int * a, const mp_int * b, int *result)
{
  mp_int n1, y, r;
  int s, j, err;


  *result = MP_NO;


  if (mp_cmp_d(b, 1) != MP_GT) {
     return MP_VAL;
  }


  if ((err = mp_init_copy (&n1, a)) != MP_OKAY) {
    return err;
  }
  if ((err = mp_sub_d (&n1, 1, &n1)) != MP_OKAY) {
    goto __N1;
  }


  if ((err = mp_init_copy (&r, &n1)) != MP_OKAY) {
    goto __N1;
  }




  s = mp_cnt_lsb(&r);


  if ((err = mp_div_2d (&r, s, &r, ((void*)0))) != MP_OKAY) {
    goto __R;
  }


  if ((err = mp_init (&y)) != MP_OKAY) {
    goto __R;
  }
  if ((err = mp_exptmod (b, &r, a, &y)) != MP_OKAY) {
    goto __Y;
  }


  if (mp_cmp_d (&y, 1) != MP_EQ && mp_cmp (&y, &n1) != MP_EQ) {
    j = 1;

    while ((j <= (s - 1)) && mp_cmp (&y, &n1) != MP_EQ) {
      if ((err = mp_sqrmod (&y, a, &y)) != MP_OKAY) {
         goto __Y;
      }


      if (mp_cmp_d (&y, 1) == MP_EQ) {
         goto __Y;
      }

      ++j;
    }


    if (mp_cmp (&y, &n1) != MP_EQ) {
      goto __Y;
    }
  }


  *result = MP_YES;
__Y:mp_clear (&y);
__R:mp_clear (&r);
__N1:mp_clear (&n1);
  return err;
}
