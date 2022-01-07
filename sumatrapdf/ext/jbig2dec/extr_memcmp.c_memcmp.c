
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
memcmp(const void *b1, const void *b2, size_t len)
{
    unsigned char *a, *b;
    size_t i;

    a = (unsigned char *)b1;
    b = (unsigned char *)b2;
    for (i = 0; i < len; i++) {
        if (*a != *b) {

            return (*a < *b) ? -1 : 1;
        }
        a++;
        b++;
    }


    return 0;
}
