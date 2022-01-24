#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; int /*<<< orphan*/  N; int /*<<< orphan*/  e; int /*<<< orphan*/  q; int /*<<< orphan*/  p; int /*<<< orphan*/  qP; int /*<<< orphan*/  dQ; int /*<<< orphan*/  dP; } ;
typedef  TYPE_1__ rsa_key ;
typedef  int /*<<< orphan*/  mp_int ;

/* Variables and functions */
 int CRYPT_BUFFER_OVERFLOW ; 
 int CRYPT_OK ; 
 int CRYPT_PK_INVALID_SIZE ; 
 int CRYPT_PK_INVALID_TYPE ; 
 int CRYPT_PK_NOT_PRIVATE ; 
 scalar_t__ MP_LT ; 
 int MP_OKAY ; 
 int PK_PRIVATE ; 
 int PK_PUBLIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned char*) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int) ; 

int FUNC13(const unsigned char *in,   unsigned long inlen,
                      unsigned char *out,  unsigned long *outlen, int which,
                      rsa_key *key)
{
   mp_int        tmp, tmpa, tmpb;
   unsigned long x;
   int           err;

   /* is the key of the right type for the operation? */
   if (which == PK_PRIVATE && (key->type != PK_PRIVATE)) {
      return CRYPT_PK_NOT_PRIVATE;
   }

   /* must be a private or public operation */
   if (which != PK_PRIVATE && which != PK_PUBLIC) {
      return CRYPT_PK_INVALID_TYPE;
   }

   /* init and copy into tmp */
   if ((err = FUNC5(&tmp, &tmpa, &tmpb, NULL)) != MP_OKAY)    { return FUNC12(err); }
   if ((err = FUNC8(&tmp, in, (int)inlen)) != MP_OKAY) { goto error; }

   /* sanity check on the input */
   if (FUNC3(&key->N, &tmp) == MP_LT) {
      err = CRYPT_PK_INVALID_SIZE;
      goto done;
   }

   /* are we using the private exponent and is the key optimized? */
   if (which == PK_PRIVATE) {
      /* tmpa = tmp^dP mod p */
      if ((err = FUNC12(FUNC4(&tmp, &key->dP, &key->p, &tmpa))) != MP_OKAY)    { goto error; }
      
      /* tmpb = tmp^dQ mod q */
      if ((err = FUNC12(FUNC4(&tmp, &key->dQ, &key->q, &tmpb))) != MP_OKAY)    { goto error; }

      /* tmp = (tmpa - tmpb) * qInv (mod p) */
      if ((err = FUNC9(&tmpa, &tmpb, &tmp)) != MP_OKAY)                    { goto error; }
      if ((err = FUNC7(&tmp, &key->qP, &key->p, &tmp)) != MP_OKAY)      { goto error; }

      /* tmp = tmpb + q * tmp */
      if ((err = FUNC6(&tmp, &key->q, &tmp)) != MP_OKAY)                   { goto error; }
      if ((err = FUNC1(&tmp, &tmpb, &tmp)) != MP_OKAY)                     { goto error; }
   } else {
      /* exptmod it */
      if ((err = FUNC4(&tmp, &key->e, &key->N, &tmp)) != MP_OKAY) { goto error; }
   }

   /* read it back */
   x = (unsigned long)FUNC11(&key->N);
   if (x > *outlen) {
      err = CRYPT_BUFFER_OVERFLOW;
      goto done;
   }
   *outlen = x;

   /* convert it */
   FUNC0(out, 0, x);
   if ((err = FUNC10(&tmp, out+(x-FUNC11(&tmp)))) != MP_OKAY) { goto error; }

   /* clean up and return */
   err = CRYPT_OK;
   goto done;
error:
   err = FUNC12(err);
done:
   FUNC2(&tmp, &tmpa, &tmpb, NULL);
   return err;
}