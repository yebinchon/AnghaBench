
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int IndexInvalid ;
 int ts_indexing_mark_as (int ,int ) ;

bool
ts_indexing_mark_as_invalid(Oid index_id)
{
 return ts_indexing_mark_as(index_id, IndexInvalid);
}
