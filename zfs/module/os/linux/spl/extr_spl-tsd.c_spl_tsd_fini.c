
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * tsd_hash_table ;
 int tsd_hash_table_fini (int *) ;

void
spl_tsd_fini(void)
{
 tsd_hash_table_fini(tsd_hash_table);
 tsd_hash_table = ((void*)0);
}
