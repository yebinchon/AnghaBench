
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* NS_Alloc (size_t) ;

void *nsalloc(size_t size)
{
    return NS_Alloc(size);
}
