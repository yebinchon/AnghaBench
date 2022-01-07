
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int * self_secret_key; int * self_public_key; } ;
typedef int FILE ;
typedef TYPE_1__ DHT ;


 int crypto_box_PUBLICKEYBYTES ;
 int crypto_box_SECRETKEYBYTES ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (int *,int,int const,int *) ;
 int const fwrite (int *,int,int const,int *) ;
 int memcpy (int *,int *,int) ;
 int printf (char*) ;

void manage_keys(DHT *dht)
{
    const uint32_t KEYS_SIZE = crypto_box_PUBLICKEYBYTES + crypto_box_SECRETKEYBYTES;
    uint8_t keys[KEYS_SIZE];

    FILE *keys_file = fopen("key", "r");

    if (keys_file != ((void*)0)) {


        size_t read_size = fread(keys, sizeof(uint8_t), KEYS_SIZE, keys_file);

        if (read_size != KEYS_SIZE) {
            printf("Error while reading the key file\nExiting.\n");
            exit(1);
        }

        memcpy(dht->self_public_key, keys, crypto_box_PUBLICKEYBYTES);
        memcpy(dht->self_secret_key, keys + crypto_box_PUBLICKEYBYTES, crypto_box_SECRETKEYBYTES);
        printf("Keys loaded successfully.\n");
    } else {
        memcpy(keys, dht->self_public_key, crypto_box_PUBLICKEYBYTES);
        memcpy(keys + crypto_box_PUBLICKEYBYTES, dht->self_secret_key, crypto_box_SECRETKEYBYTES);
        keys_file = fopen("key", "w");

        if (keys_file == ((void*)0)) {
            printf("Error opening key file in write mode.\nKeys will not be saved.\n");
            return;
        }

        if (fwrite(keys, sizeof(uint8_t), KEYS_SIZE, keys_file) != KEYS_SIZE) {
            printf("Error while writing the key file.\nExiting.\n");
            exit(1);
        }

        printf("Keys saved successfully.\n");
    }

    fclose(keys_file);
}
