
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int zipmapDecodeLength (unsigned char*) ;
 unsigned int zipmapEncodeLength (int *,unsigned int) ;

__attribute__((used)) static unsigned int zipmapRawValueLength(unsigned char *p) {
    unsigned int l = zipmapDecodeLength(p);
    unsigned int used;

    used = zipmapEncodeLength(((void*)0),l);
    used += p[used] + 1 + l;
    return used;
}
