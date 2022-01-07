
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* sdsdup (void*) ;

void *ACLListDupSds(void *item) {
    return sdsdup(item);
}
