
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zipmapLookupRaw (unsigned char*,int *,int ,unsigned int*) ;

size_t zipmapBlobLen(unsigned char *zm) {
    unsigned int totlen;
    zipmapLookupRaw(zm,((void*)0),0,&totlen);
    return totlen;
}
