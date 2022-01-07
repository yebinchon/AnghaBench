
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* ZIPLIST_ENTRY_HEAD (unsigned char*) ;
 unsigned char* ZIPLIST_ENTRY_TAIL (unsigned char*) ;
 int ZIP_DECODE_PREVLEN (unsigned char*,unsigned int,unsigned int) ;
 unsigned char ZIP_END ;
 int assert (int) ;

unsigned char *ziplistPrev(unsigned char *zl, unsigned char *p) {
    unsigned int prevlensize, prevlen = 0;




    if (p[0] == ZIP_END) {
        p = ZIPLIST_ENTRY_TAIL(zl);
        return (p[0] == ZIP_END) ? ((void*)0) : p;
    } else if (p == ZIPLIST_ENTRY_HEAD(zl)) {
        return ((void*)0);
    } else {
        ZIP_DECODE_PREVLEN(p, prevlensize, prevlen);
        assert(prevlen > 0);
        return p-prevlen;
    }
}
