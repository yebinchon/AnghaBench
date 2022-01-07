
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * chunk; } ;
struct TYPE_9__ {int associated_table_prefix; int associated_schema_name; } ;
struct TYPE_10__ {TYPE_1__ fd; int space; int chunk_cache; } ;
typedef int Point ;
typedef TYPE_2__ Hypertable ;
typedef TYPE_3__ ChunkStoreEntry ;
typedef int Chunk ;


 int Assert (int) ;
 int NameStr (int ) ;
 TYPE_3__* hypertable_chunk_store_add (TYPE_2__*,int *) ;
 int * ts_chunk_create (TYPE_2__*,int *,int ,int ) ;
 int * ts_chunk_find (int ,int *) ;
 TYPE_3__* ts_subspace_store_get (int ,int *) ;

__attribute__((used)) static inline Chunk *
hypertable_get_chunk(Hypertable *h, Point *point, bool create_if_not_exists)
{
 Chunk *chunk;
 ChunkStoreEntry *cse = ts_subspace_store_get(h->chunk_cache, point);
 if (cse != ((void*)0))
 {
  Assert(((void*)0) != cse->chunk);
  return cse->chunk;
 }






 chunk = ts_chunk_find(h->space, point);

 if (((void*)0) == chunk)
 {
  if (!create_if_not_exists)
   return ((void*)0);

  chunk = ts_chunk_create(h,
        point,
        NameStr(h->fd.associated_schema_name),
        NameStr(h->fd.associated_table_prefix));
 }

 Assert(chunk != ((void*)0));


 cse = hypertable_chunk_store_add(h, chunk);
 return chunk;
}
