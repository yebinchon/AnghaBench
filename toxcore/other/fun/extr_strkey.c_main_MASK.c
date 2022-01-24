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

/* Variables and functions */
 int FUNC0 (char*) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int crypto_box_SECRETKEYBYTES ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 size_t FUNC7 (char*) ; 

int FUNC8(int argc, char *argv[])
{
    unsigned char public_key[crypto_box_PUBLICKEYBYTES]; // null terminator
    unsigned char secret_key[crypto_box_SECRETKEYBYTES];
    int offset = 0;
    size_t len;
    unsigned char desired_bin[crypto_box_PUBLICKEYBYTES]; // null terminator

    if (argc == 3) {
        offset = FUNC0(argv[1]);
        char *desired_hex = argv[2];
        len = FUNC7(desired_hex);
        if (len % 2 != 0) {
            FUNC3(stderr, "Desired key should have an even number of letters\n");
            FUNC2(1);
        }
        size_t block_length = (offset < 0 ? 0 : offset) + len/2;
        if (block_length > crypto_box_PUBLICKEYBYTES) {
            FUNC3(stderr, "The given key with the given offset exceed public key's length\n");
            FUNC2(1);
        }

        // convert hex to bin
        char *pos = desired_hex;
        size_t i;
        for (i = 0; i < len; pos += 2) {
            FUNC6(pos, "%2hhx", &desired_bin[i]);
            ++i;
        }
    } else {
        FUNC3(stdout, "Usage: executable <byte offset> <desired hex string with even number of letters>\n");
        FUNC2(1);
    }

    len /= 2;

#ifdef PRINT_TRIES_COUNT
    long long unsigned int tries = 0;
#endif

    if (offset < 0) {
        int found = 0;
        do {
#ifdef PRINT_TRIES_COUNT
            tries ++;
#endif
            FUNC1(public_key, secret_key);
            int i;
            for (i = 0; i <= crypto_box_PUBLICKEYBYTES - len; i ++) {
                if (FUNC4(public_key + i, desired_bin, len) == 0) {
                    found = 1;
                    break;
                }
            }
        } while (!found);
    } else {
        unsigned char *p = public_key + offset;

        do {
#ifdef PRINT_TRIES_COUNT
	    tries ++;
#endif
            FUNC1(public_key, secret_key);
        } while (FUNC4(p, desired_bin, len) != 0);
    }

    FUNC3(stdout, "Public key:  ");
    FUNC5(public_key);
    FUNC3(stdout, "\n");

    FUNC3(stdout, "Private key: ");
    FUNC5(secret_key);
    FUNC3(stdout, "\n");

#ifdef PRINT_TRIES_COUNT
	fprintf(stdout, "Found the key pair on %llu try.\n", tries);
#endif

    return 0;
}