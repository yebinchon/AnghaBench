
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RegisterCustomScanMethods (int *) ;
 int chunk_append_plan_methods ;

void
_chunk_append_init(void)
{
 RegisterCustomScanMethods(&chunk_append_plan_methods);
}
