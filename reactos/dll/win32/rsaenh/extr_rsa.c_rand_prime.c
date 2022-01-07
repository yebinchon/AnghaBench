
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;


 int CRYPT_INVALID_PRIME_SIZE ;
 int LTM_PRIME_2MSB_ON ;
 int LTM_PRIME_BBS ;
 int mp_prime_rabin_miller_trials (long) ;
 int mp_prime_random_ex (int *,int ,long,int,int ,int *) ;
 int mpi_to_ltc_error (int ) ;
 int printf (char*) ;
 int rand_prime_helper ;

__attribute__((used)) static int rand_prime(mp_int *N, long len)
{
   int type;


   if (len < 0) {
      type = LTM_PRIME_BBS;
      len = -len;
   } else {

      type = LTM_PRIME_2MSB_ON;

   }


   if (len < 16 || len > 8192) {
      printf("Invalid prime size!\n");
      return CRYPT_INVALID_PRIME_SIZE;
   }




   return mpi_to_ltc_error(mp_prime_random_ex(N, mp_prime_rabin_miller_trials(len), len, type, rand_prime_helper, ((void*)0)));
}
