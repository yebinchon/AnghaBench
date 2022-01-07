
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NS_Free (void*) ;

void nsfree(void *mem)
{
    NS_Free(mem);
}
