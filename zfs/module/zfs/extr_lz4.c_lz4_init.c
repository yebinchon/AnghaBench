
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refTables {int dummy; } ;


 int kmem_cache_create (char*,int,int ,int *,int *,int *,int *,int *,int ) ;
 int lz4_cache ;

void
lz4_init(void)
{
 lz4_cache = kmem_cache_create("lz4_cache",
     sizeof (struct refTables), 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
}
