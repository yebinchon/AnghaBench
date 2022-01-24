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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int,int const,int /*<<< orphan*/ *) ; 
 int const FUNC4 (int /*<<< orphan*/ *,int,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(DHT *dht)
{
    const uint32_t KEYS_SIZE = crypto_box_PUBLICKEYBYTES + crypto_box_SECRETKEYBYTES;
    uint8_t keys[KEYS_SIZE];

    FILE *keys_file = FUNC2("key", "r");

    if (keys_file != NULL) {
        /* If file was opened successfully -- load keys,
           otherwise save new keys */
        size_t read_size = FUNC3(keys, sizeof(uint8_t), KEYS_SIZE, keys_file);

        if (read_size != KEYS_SIZE) {
            FUNC6("Error while reading the key file\nExiting.\n");
            FUNC0(1);
        }

        FUNC5(dht->self_public_key, keys, crypto_box_PUBLICKEYBYTES);
        FUNC5(dht->self_secret_key, keys + crypto_box_PUBLICKEYBYTES, crypto_box_SECRETKEYBYTES);
        FUNC6("Keys loaded successfully.\n");
    } else {
        FUNC5(keys, dht->self_public_key, crypto_box_PUBLICKEYBYTES);
        FUNC5(keys + crypto_box_PUBLICKEYBYTES, dht->self_secret_key, crypto_box_SECRETKEYBYTES);
        keys_file = FUNC2("key", "w");

        if (keys_file == NULL) {
            FUNC6("Error opening key file in write mode.\nKeys will not be saved.\n");
            return;
        }

        if (FUNC4(keys, sizeof(uint8_t), KEYS_SIZE, keys_file) != KEYS_SIZE) {
            FUNC6("Error while writing the key file.\nExiting.\n");
            FUNC0(1);
        }

        FUNC6("Keys saved successfully.\n");
    }

    FUNC1(keys_file);
}