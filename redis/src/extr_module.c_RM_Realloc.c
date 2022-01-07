
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* zrealloc (void*,size_t) ;

void* RM_Realloc(void *ptr, size_t bytes) {
    return zrealloc(ptr,bytes);
}
