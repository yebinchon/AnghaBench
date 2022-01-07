
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mcxt; } ;
typedef TYPE_1__ ChunkStoreEntry ;


 int MemoryContextDelete (int ) ;

__attribute__((used)) static void
chunk_store_entry_free(void *cse)
{
 MemoryContextDelete(((ChunkStoreEntry *) cse)->mcxt);
}
