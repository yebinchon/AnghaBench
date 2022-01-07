
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,int) ;

void PICE_memcpy(void* t,void* s,int sz)
{
    memcpy(t,s,sz);
}
