
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;
typedef int uint32_t ;



__attribute__((used)) static uint32_t
xmlDictComputeBigKey(const xmlChar* data, int namelen, int seed) {
    uint32_t hash;
    int i;

    if (namelen <= 0 || data == ((void*)0)) return(0);

    hash = seed;

    for (i = 0;i < namelen; i++) {
        hash += data[i];
 hash += (hash << 10);
 hash ^= (hash >> 6);
    }
    hash += (hash << 3);
    hash ^= (hash >> 11);
    hash += (hash << 15);

    return hash;
}
