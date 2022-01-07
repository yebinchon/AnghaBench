
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TSD_HASH_TABLE_BITS_DEFAULT ;
 int * tsd_hash_table ;
 int * tsd_hash_table_init (int ) ;

int
spl_tsd_init(void)
{
 tsd_hash_table = tsd_hash_table_init(TSD_HASH_TABLE_BITS_DEFAULT);
 if (tsd_hash_table == ((void*)0))
  return (1);

 return (0);
}
