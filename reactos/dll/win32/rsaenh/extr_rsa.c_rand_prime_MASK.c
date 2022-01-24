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

/* Variables and functions */
 int CRYPT_INVALID_PRIME_SIZE ; 
 int LTM_PRIME_2MSB_ON ; 
 int LTM_PRIME_BBS ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  rand_prime_helper ; 

__attribute__((used)) static int FUNC4(mp_int *N, long len)
{
   int type;

   /* get type */
   if (len < 0) {
      type = LTM_PRIME_BBS;
      len = -len;
   } else {
      /* This seems to be what MS CSP's do: */
      type = LTM_PRIME_2MSB_ON;
      /* Original LibTomCrypt: type = 0; */
   }

   /* allow sizes between 2 and 256 bytes for a prime size */
   if (len < 16 || len > 8192) {
      FUNC3("Invalid prime size!\n");
      return CRYPT_INVALID_PRIME_SIZE;
   }
   
   /* New prime generation makes the code even more cryptoish-insane.  Do you know what this means!!!
      -- Gir:  Yeah, oh wait, er, no.
    */
   return FUNC2(FUNC1(N, FUNC0(len), len, type, rand_prime_helper, NULL));
}