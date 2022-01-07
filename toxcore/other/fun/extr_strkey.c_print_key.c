
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t crypto_box_PUBLICKEYBYTES ;
 int fprintf (int ,char*,...) ;
 int stdout ;

void print_key(unsigned char *key)
{
    size_t i;
    for (i = 0; i < crypto_box_PUBLICKEYBYTES; i++) {
        if (key[i] < 16) {
            fprintf(stdout, "0");
        }

        fprintf(stdout, "%hhX", key[i]);
    }
}
