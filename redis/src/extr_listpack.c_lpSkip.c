
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long lpCurrentEncodedSize (unsigned char*) ;
 scalar_t__ lpEncodeBacklen (int *,unsigned long) ;

unsigned char *lpSkip(unsigned char *p) {
    unsigned long entrylen = lpCurrentEncodedSize(p);
    entrylen += lpEncodeBacklen(((void*)0),entrylen);
    p += entrylen;
    return p;
}
