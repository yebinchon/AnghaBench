
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int space; int main_table_relid; } ;
typedef int Point ;
typedef TYPE_1__ Hypertable ;
typedef int Chunk ;


 int Assert (int ) ;
 int LockRelationOid (int ,int ) ;
 int ShareUpdateExclusiveLock ;
 int * chunk_create_after_lock (TYPE_1__*,int *,char const*,char const*) ;
 int * ts_chunk_find (int ,int *) ;

Chunk *
ts_chunk_create(Hypertable *ht, Point *p, const char *schema, const char *prefix)
{
 Chunk *chunk;







 LockRelationOid(ht->main_table_relid, ShareUpdateExclusiveLock);


 chunk = ts_chunk_find(ht->space, p);

 if (((void*)0) == chunk)
  chunk = chunk_create_after_lock(ht, p, schema, prefix);

 Assert(chunk != ((void*)0));

 return chunk;
}
