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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/ * self_secret_key; int /*<<< orphan*/ * self_public_key; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ DHT ;

/* Variables and functions */
 int crypto_box_PUBLICKEYBYTES ; 
 int crypto_box_SECRETKEYBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,int const,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC5(DHT *dht, char *keys_file_path)
{
    const uint32_t KEYS_SIZE = crypto_box_PUBLICKEYBYTES + crypto_box_SECRETKEYBYTES;
    uint8_t keys[KEYS_SIZE];
    FILE *keys_file;

    // Check if file exits, proceed to open and load keys
    keys_file = FUNC1(keys_file_path, "r");

    if (keys_file != NULL) {
        const size_t read_size = FUNC2(keys, sizeof(uint8_t), KEYS_SIZE, keys_file);

        if (read_size != KEYS_SIZE) {
            FUNC0(keys_file);
            return 0;
        }

        FUNC4(dht->self_public_key, keys, crypto_box_PUBLICKEYBYTES);
        FUNC4(dht->self_secret_key, keys + crypto_box_PUBLICKEYBYTES, crypto_box_SECRETKEYBYTES);
    } else {
        // Otherwise save new keys
        FUNC4(keys, dht->self_public_key, crypto_box_PUBLICKEYBYTES);
        FUNC4(keys + crypto_box_PUBLICKEYBYTES, dht->self_secret_key, crypto_box_SECRETKEYBYTES);

        keys_file = FUNC1(keys_file_path, "w");

        if (!keys_file)
            return 0;

        const size_t write_size = FUNC3(keys, sizeof(uint8_t), KEYS_SIZE, keys_file);

        if (write_size != KEYS_SIZE) {
            FUNC0(keys_file);
            return 0;
        }
    }

    FUNC0(keys_file);

    return 1;
}