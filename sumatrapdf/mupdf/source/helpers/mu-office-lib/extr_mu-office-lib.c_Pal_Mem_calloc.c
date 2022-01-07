
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (unsigned int,size_t) ;

void *Pal_Mem_calloc(unsigned int num, size_t size)
{
 return calloc(num, size);
}
