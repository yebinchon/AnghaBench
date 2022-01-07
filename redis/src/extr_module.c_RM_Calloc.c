
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* zcalloc (size_t) ;

void *RM_Calloc(size_t nmemb, size_t size) {
    return zcalloc(nmemb*size);
}
