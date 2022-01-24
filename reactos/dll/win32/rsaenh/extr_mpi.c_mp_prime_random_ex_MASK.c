#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mp_int ;
typedef  int (* ltm_prime_callback ) (unsigned char*,int,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int LTM_PRIME_2MSB_OFF ; 
 int LTM_PRIME_2MSB_ON ; 
 int LTM_PRIME_BBS ; 
 int LTM_PRIME_SAFE ; 
 int MP_MEM ; 
 int MP_NO ; 
 int MP_OKAY ; 
 int MP_VAL ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int FUNC9(mp_int *a, int t, int size, int flags, ltm_prime_callback cb, void *dat)
{
   unsigned char *tmp, maskAND, maskOR_msb, maskOR_lsb;
   int res, err, bsize, maskOR_msb_offset;

   /* sanity check the input */
   if (size <= 1 || t <= 0) {
      return MP_VAL;
   }

   /* LTM_PRIME_SAFE implies LTM_PRIME_BBS */
   if (flags & LTM_PRIME_SAFE) {
      flags |= LTM_PRIME_BBS;
   }

   /* calc the byte size */
   bsize = (size>>3)+((size&7)?1:0);

   /* we need a buffer of bsize bytes */
   tmp = FUNC1(FUNC0(), 0, bsize);
   if (tmp == NULL) {
      return MP_MEM;
   }

   /* calc the maskAND value for the MSbyte*/
   maskAND = ((size&7) == 0) ? 0xFF : (0xFF >> (8 - (size & 7))); 

   /* calc the maskOR_msb */
   maskOR_msb        = 0;
   maskOR_msb_offset = ((size & 7) == 1) ? 1 : 0;
   if (flags & LTM_PRIME_2MSB_ON) {
      maskOR_msb     |= 1 << ((size - 2) & 7);
   } else if (flags & LTM_PRIME_2MSB_OFF) {
      maskAND        &= ~(1 << ((size - 2) & 7));
   }

   /* get the maskOR_lsb */
   maskOR_lsb         = 0;
   if (flags & LTM_PRIME_BBS) {
      maskOR_lsb     |= 3;
   }

   do {
      /* read the bytes */
      if (cb(tmp, bsize, dat) != bsize) {
         err = MP_VAL;
         goto error;
      }
 
      /* work over the MSbyte */
      tmp[0]    &= maskAND;
      tmp[0]    |= 1 << ((size - 1) & 7);

      /* mix in the maskORs */
      tmp[maskOR_msb_offset]   |= maskOR_msb;
      tmp[bsize-1]             |= maskOR_lsb;

      /* read it in */
      if ((err = FUNC7(a, tmp, bsize)) != MP_OKAY)     { goto error; }

      /* is it prime? */
      if ((err = FUNC6(a, t, &res)) != MP_OKAY)           { goto error; }
      if (res == MP_NO) {  
         continue;
      }

      if (flags & LTM_PRIME_SAFE) {
         /* see if (a-1)/2 is prime */
         if ((err = FUNC8(a, 1, a)) != MP_OKAY)                    { goto error; }
         if ((err = FUNC4(a, a)) != MP_OKAY)                       { goto error; }
 
         /* is it prime? */
         if ((err = FUNC6(a, t, &res)) != MP_OKAY)        { goto error; }
      }
   } while (res == MP_NO);

   if (flags & LTM_PRIME_SAFE) {
      /* restore a to the original value */
      if ((err = FUNC5(a, a)) != MP_OKAY)                          { goto error; }
      if ((err = FUNC3(a, 1, a)) != MP_OKAY)                       { goto error; }
   }

   err = MP_OKAY;
error:
   FUNC2(FUNC0(), 0, tmp);
   return err;
}