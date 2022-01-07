
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int * ts_chunk_get_by_relid (int ,int ,int) ;

bool
ts_chunk_exists_relid(Oid relid)
{
 return ts_chunk_get_by_relid(relid, 0, 0) != ((void*)0);
}
