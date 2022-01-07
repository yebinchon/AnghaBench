
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;
typedef int (* ltm_prime_callback ) (unsigned char*,int,void*) ;


 int GetProcessHeap () ;
 unsigned char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,unsigned char*) ;
 int LTM_PRIME_2MSB_OFF ;
 int LTM_PRIME_2MSB_ON ;
 int LTM_PRIME_BBS ;
 int LTM_PRIME_SAFE ;
 int MP_MEM ;
 int MP_NO ;
 int MP_OKAY ;
 int MP_VAL ;
 int mp_add_d (int *,int,int *) ;
 int mp_div_2 (int *,int *) ;
 int mp_mul_2 (int *,int *) ;
 int mp_prime_is_prime (int *,int,int*) ;
 int mp_read_unsigned_bin (int *,unsigned char*,int) ;
 int mp_sub_d (int *,int,int *) ;

int mp_prime_random_ex(mp_int *a, int t, int size, int flags, ltm_prime_callback cb, void *dat)
{
   unsigned char *tmp, maskAND, maskOR_msb, maskOR_lsb;
   int res, err, bsize, maskOR_msb_offset;


   if (size <= 1 || t <= 0) {
      return MP_VAL;
   }


   if (flags & LTM_PRIME_SAFE) {
      flags |= LTM_PRIME_BBS;
   }


   bsize = (size>>3)+((size&7)?1:0);


   tmp = HeapAlloc(GetProcessHeap(), 0, bsize);
   if (tmp == ((void*)0)) {
      return MP_MEM;
   }


   maskAND = ((size&7) == 0) ? 0xFF : (0xFF >> (8 - (size & 7)));


   maskOR_msb = 0;
   maskOR_msb_offset = ((size & 7) == 1) ? 1 : 0;
   if (flags & LTM_PRIME_2MSB_ON) {
      maskOR_msb |= 1 << ((size - 2) & 7);
   } else if (flags & LTM_PRIME_2MSB_OFF) {
      maskAND &= ~(1 << ((size - 2) & 7));
   }


   maskOR_lsb = 0;
   if (flags & LTM_PRIME_BBS) {
      maskOR_lsb |= 3;
   }

   do {

      if (cb(tmp, bsize, dat) != bsize) {
         err = MP_VAL;
         goto error;
      }


      tmp[0] &= maskAND;
      tmp[0] |= 1 << ((size - 1) & 7);


      tmp[maskOR_msb_offset] |= maskOR_msb;
      tmp[bsize-1] |= maskOR_lsb;


      if ((err = mp_read_unsigned_bin(a, tmp, bsize)) != MP_OKAY) { goto error; }


      if ((err = mp_prime_is_prime(a, t, &res)) != MP_OKAY) { goto error; }
      if (res == MP_NO) {
         continue;
      }

      if (flags & LTM_PRIME_SAFE) {

         if ((err = mp_sub_d(a, 1, a)) != MP_OKAY) { goto error; }
         if ((err = mp_div_2(a, a)) != MP_OKAY) { goto error; }


         if ((err = mp_prime_is_prime(a, t, &res)) != MP_OKAY) { goto error; }
      }
   } while (res == MP_NO);

   if (flags & LTM_PRIME_SAFE) {

      if ((err = mp_mul_2(a, a)) != MP_OKAY) { goto error; }
      if ((err = mp_add_d(a, 1, a)) != MP_OKAY) { goto error; }
   }

   err = MP_OKAY;
error:
   HeapFree(GetProcessHeap(), 0, tmp);
   return err;
}
