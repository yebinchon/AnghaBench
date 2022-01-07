
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ZIP_END ;
 int zipRawEntryLength (unsigned char*) ;

unsigned char *ziplistNext(unsigned char *zl, unsigned char *p) {
    ((void) zl);




    if (p[0] == ZIP_END) {
        return ((void*)0);
    }

    p += zipRawEntryLength(p);
    if (p[0] == ZIP_END) {
        return ((void*)0);
    }

    return p;
}
