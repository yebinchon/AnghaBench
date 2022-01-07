
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * zipmapLookupRaw (unsigned char*,unsigned char*,unsigned int,int *) ;

int zipmapExists(unsigned char *zm, unsigned char *key, unsigned int klen) {
    return zipmapLookupRaw(zm,key,klen,((void*)0)) != ((void*)0);
}
