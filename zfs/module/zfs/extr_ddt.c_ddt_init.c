
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ddt_t ;
typedef int ddt_entry_t ;


 void* ddt_cache ;
 void* ddt_entry_cache ;
 void* kmem_cache_create (char*,int,int ,int *,int *,int *,int *,int *,int ) ;

void
ddt_init(void)
{
 ddt_cache = kmem_cache_create("ddt_cache",
     sizeof (ddt_t), 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
 ddt_entry_cache = kmem_cache_create("ddt_entry_cache",
     sizeof (ddt_entry_t), 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
}
