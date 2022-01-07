
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char icase_hash (unsigned char) ;

unsigned int hash_name(const char *name, int namelen)
{
    unsigned int hash = 0x123;

    do {
        unsigned char c = *name++;
        c = icase_hash(c);
        hash = hash*101 + c;
    } while (--namelen);
    return hash;
}
