
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;
typedef int LOCKMODE ;
typedef int Hyperspace ;


 int append_chunk_oid ;
 int * chunk_find_all (int *,int *,int ,int ,int *) ;

List *
ts_chunk_find_all_oids(Hyperspace *hs, List *dimension_vecs, LOCKMODE lockmode)
{
 return chunk_find_all(hs, dimension_vecs, append_chunk_oid, lockmode, ((void*)0));
}
