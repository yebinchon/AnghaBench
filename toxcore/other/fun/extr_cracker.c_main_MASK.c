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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int) ; 
 int FUNC8 (char*) ; 

int FUNC9(int argc, char *argv[])
{
    if (argc < 2) {
        FUNC6("usage: ./cracker public_key(or beginning of one in hex format)\n");
        return 0;
    }

    long long unsigned int num_tries = 0;

    uint32_t len = FUNC8(argv[1]) / 2;
    unsigned char *key = FUNC2(argv[1]);
    uint8_t pub_key[32], priv_key[32], c_key[32];

    if (len > 32)
        len = 32;

    FUNC4(c_key, key, len);
    FUNC1(key);
    FUNC7(priv_key, 32);

    while (1) {
        FUNC0(pub_key, priv_key);
        uint32_t i;

        if (FUNC3(c_key, pub_key, len) == 0)
            break;

        for (i = 32; i != 0; --i) {
            priv_key[i - 1] += 1;

            if (priv_key[i - 1] != 0)
                break;
        }

        ++num_tries;
    }

    FUNC6("Public key:\n");
    FUNC5(pub_key);
    FUNC6("\nPrivate key:\n");
    FUNC5(priv_key);
    FUNC6("\n %llu keys tried\n", num_tries);
    return 0;
}