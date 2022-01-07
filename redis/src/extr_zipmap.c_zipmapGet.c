
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZIPMAP_LEN_BYTES (unsigned int) ;
 unsigned int zipmapDecodeLength (unsigned char*) ;
 unsigned char* zipmapLookupRaw (unsigned char*,unsigned char*,unsigned int,int *) ;
 int zipmapRawKeyLength (unsigned char*) ;

int zipmapGet(unsigned char *zm, unsigned char *key, unsigned int klen, unsigned char **value, unsigned int *vlen) {
    unsigned char *p;

    if ((p = zipmapLookupRaw(zm,key,klen,((void*)0))) == ((void*)0)) return 0;
    p += zipmapRawKeyLength(p);
    *vlen = zipmapDecodeLength(p);
    *value = p + ZIPMAP_LEN_BYTES(*vlen) + 1;
    return 1;
}
