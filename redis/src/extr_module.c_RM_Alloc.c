
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* zmalloc (size_t) ;

void *RM_Alloc(size_t bytes) {
    return zmalloc(bytes);
}
