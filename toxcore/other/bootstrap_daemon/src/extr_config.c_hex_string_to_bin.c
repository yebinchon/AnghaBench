
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * malloc (size_t) ;
 int sscanf (char*,char*,int *) ;
 int strlen (char*) ;

uint8_t *hex_string_to_bin(char *hex_string)
{
    if (strlen(hex_string) % 2 != 0) {
        return ((void*)0);
    }

    size_t len = strlen(hex_string) / 2;
    uint8_t *ret = malloc(len);

    char *pos = hex_string;
    size_t i;

    for (i = 0; i < len; ++i, pos += 2) {
        sscanf(pos, "%2hhx", &ret[i]);
    }

    return ret;
}
