
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ExFreePoolWithTag (void*,int ) ;
 int LWIP_TAG ;

void
free(void *mem)
{
    ExFreePoolWithTag(mem, LWIP_TAG);
}
