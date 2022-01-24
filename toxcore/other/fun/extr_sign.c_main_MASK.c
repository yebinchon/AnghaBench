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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long*,char*,int,unsigned char*) ; 
 int crypto_sign_ed25519_BYTES ; 
 int crypto_sign_ed25519_PUBLICKEYBYTES ; 
 int crypto_sign_ed25519_SECRETKEYBYTES ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*) ; 
 int FUNC2 (char*,unsigned long long*,char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned long long FUNC6 (char*,int,unsigned long long,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC7 (char*) ; 
 int FUNC8 (char*,char**) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

int FUNC12(int argc, char *argv[])
{
    unsigned char pk[crypto_sign_ed25519_PUBLICKEYBYTES];
    unsigned char sk[crypto_sign_ed25519_SECRETKEYBYTES];

    if (argc == 2 && argv[1][0] == 'g') {
        FUNC1(pk, sk);
        FUNC11("Public key:\n");
        int i;

        for (i = 0; i < crypto_sign_ed25519_PUBLICKEYBYTES; i++) {
            FUNC11("%02hhX", pk[i]);
        }

        FUNC11("\nSecret key:\n");

        for (i = 0; i < crypto_sign_ed25519_SECRETKEYBYTES; i++) {
            FUNC11("%02hhX", sk[i]);
        }

        FUNC11("\n");
    }

    if (argc == 5 && argv[1][0] == 's') {
        unsigned char *secret_key = FUNC7(argv[2]);
        char *data;
        int size = FUNC8(argv[3], &data);

        if (size < 0)
            goto fail;

        unsigned long long smlen;
        char *sm = FUNC9(size + crypto_sign_ed25519_BYTES * 2);
        FUNC0(sm, &smlen, data, size, secret_key);
        FUNC5(secret_key);

        if (smlen - size != crypto_sign_ed25519_BYTES)
            goto fail;

        FILE *f = FUNC4(argv[4], "wb");

        if (f == NULL)
            goto fail;

        FUNC10(sm + smlen, sm, crypto_sign_ed25519_BYTES); // Move signature from beginning to end of file.

        if (FUNC6(sm + (smlen - size), 1, smlen, f) != smlen)
            goto fail;

        FUNC3(f);
        FUNC11("Signed successfully.\n");
    }

    if (argc == 4 && argv[1][0] == 'c') {
        unsigned char *public_key = FUNC7(argv[2]);
        char *data;
        int size = FUNC8(argv[3], &data);

        if (size < 0)
            goto fail;

        char *signe = FUNC9(size + crypto_sign_ed25519_BYTES);
        FUNC10(signe, data + size - crypto_sign_ed25519_BYTES,
               crypto_sign_ed25519_BYTES); // Move signature from end to beginning of file.
        FUNC10(signe + crypto_sign_ed25519_BYTES, data, size - crypto_sign_ed25519_BYTES);
        unsigned long long smlen;
        char *m = FUNC9(size);
        unsigned long long mlen;

        if (FUNC2(m, &mlen, signe, size, public_key) == -1) {
            FUNC11("Failed checking sig.\n");
            goto fail;
        }

        FUNC11("Checked successfully.\n");
    }

    return 0;

fail:
    FUNC11("FAIL\n");
    return 1;
}