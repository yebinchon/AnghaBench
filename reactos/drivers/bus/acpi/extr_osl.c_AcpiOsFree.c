
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINT1 (char*) ;
 int ExFreePoolWithTag (void*,char) ;

void
AcpiOsFree(void *ptr)
{
    if (!ptr)
        DPRINT1("Attempt to free null pointer!!!\n");
    ExFreePoolWithTag(ptr, 'ipcA');
}
