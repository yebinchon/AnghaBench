
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* xmlReallocLoc (void*,size_t,char*,int ) ;

void *
xmlMemRealloc(void *ptr,size_t size) {
    return(xmlReallocLoc(ptr, size, "none", 0));
}
