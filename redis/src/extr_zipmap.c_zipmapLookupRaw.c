
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ZIPMAP_END ;
 int memcmp (unsigned char*,unsigned char*,unsigned int) ;
 unsigned int zipmapDecodeLength (unsigned char*) ;
 unsigned int zipmapEncodeLength (int *,unsigned int) ;

__attribute__((used)) static unsigned char *zipmapLookupRaw(unsigned char *zm, unsigned char *key, unsigned int klen, unsigned int *totlen) {
    unsigned char *p = zm+1, *k = ((void*)0);
    unsigned int l,llen;

    while(*p != ZIPMAP_END) {
        unsigned char free;


        l = zipmapDecodeLength(p);
        llen = zipmapEncodeLength(((void*)0),l);
        if (key != ((void*)0) && k == ((void*)0) && l == klen && !memcmp(p+llen,key,l)) {


            if (totlen != ((void*)0)) {
                k = p;
            } else {
                return p;
            }
        }
        p += llen+l;

        l = zipmapDecodeLength(p);
        p += zipmapEncodeLength(((void*)0),l);
        free = p[0];
        p += l+1+free;
    }
    if (totlen != ((void*)0)) *totlen = (unsigned int)(p-zm)+1;
    return k;
}
