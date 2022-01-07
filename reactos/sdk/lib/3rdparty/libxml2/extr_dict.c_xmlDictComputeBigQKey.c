
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;
typedef int uint32_t ;



__attribute__((used)) static unsigned long
xmlDictComputeBigQKey(const xmlChar *prefix, int plen,
                      const xmlChar *name, int len, int seed)
{
    uint32_t hash;
    int i;

    hash = seed;

    for (i = 0;i < plen; i++) {
        hash += prefix[i];
 hash += (hash << 10);
 hash ^= (hash >> 6);
    }
    hash += ':';
    hash += (hash << 10);
    hash ^= (hash >> 6);

    for (i = 0;i < len; i++) {
        hash += name[i];
 hash += (hash << 10);
 hash ^= (hash >> 6);
    }
    hash += (hash << 3);
    hash ^= (hash >> 11);
    hash += (hash << 15);

    return hash;
}
