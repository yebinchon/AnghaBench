
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int zipmapDecodeLength (unsigned char*) ;
 unsigned int zipmapEncodeLength (int *,unsigned int) ;

__attribute__((used)) static unsigned int zipmapRawKeyLength(unsigned char *p) {
    unsigned int l = zipmapDecodeLength(p);
    return zipmapEncodeLength(((void*)0),l) + l;
}
