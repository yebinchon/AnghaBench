
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* xmlMallocLoc (size_t,char*,int ) ;

void *
xmlMemMalloc(size_t size)
{
    return(xmlMallocLoc(size, "none", 0));
}
