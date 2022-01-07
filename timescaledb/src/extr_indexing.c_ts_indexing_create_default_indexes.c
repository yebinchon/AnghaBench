
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hypertable ;


 int indexing_create_and_verify_hypertable_indexes (int *,int,int) ;

void
ts_indexing_create_default_indexes(Hypertable *ht)
{
 indexing_create_and_verify_hypertable_indexes(ht, 1, 0);
}
