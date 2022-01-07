
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_MEMORY_MODE_DUPLICATE ;
 void* hb_blob_create (int *,int ,int ,int *,int *) ;

__attribute__((used)) static void *
create_blob_from_inert (void)
{
  return hb_blob_create (((void*)0), 0, HB_MEMORY_MODE_DUPLICATE, ((void*)0), ((void*)0));
}
