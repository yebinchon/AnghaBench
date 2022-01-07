
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LOG_LEVEL_INFO ;
 int crypto_box_PUBLICKEYBYTES ;
 scalar_t__ sprintf (char*,char*,int const) ;
 int write_log (int ,char*,char*) ;

void print_public_key(const uint8_t *public_key)
{
    char buffer[2 * crypto_box_PUBLICKEYBYTES + 1];
    int index = 0;

    size_t i;

    for (i = 0; i < crypto_box_PUBLICKEYBYTES; i++) {
        index += sprintf(buffer + index, "%02hhX", public_key[i]);
    }

    write_log(LOG_LEVEL_INFO, "Public Key: %s\n", buffer);

    return;
}
