
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int IndexValid ;
 int ts_indexing_mark_as (int ,int ) ;

void
ts_indexing_mark_as_valid(Oid index_id)
{
 ts_indexing_mark_as(index_id, IndexValid);
}
