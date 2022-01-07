
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ num_dimensions; } ;
struct TYPE_8__ {TYPE_3__* space; } ;
struct TYPE_7__ {scalar_t__ num_dimensions; } ;
typedef int List ;
typedef int LOCKMODE ;
typedef TYPE_1__ HypertableRestrictInfo ;
typedef TYPE_2__ Hypertable ;
typedef int Chunk ;


 int Assert (int) ;
 int * gather_restriction_dimension_vectors (TYPE_1__*) ;
 int ** ts_chunk_find_all (TYPE_3__*,int *,int ,unsigned int*) ;

__attribute__((used)) static Chunk **
hypertable_restrict_info_get_chunks(HypertableRestrictInfo *hri, Hypertable *ht, LOCKMODE lockmode,
         unsigned int *num_chunks)
{
 List *dimension_vecs = gather_restriction_dimension_vectors(hri);

 Assert(hri->num_dimensions == ht->space->num_dimensions);

 return ts_chunk_find_all(ht->space, dimension_vecs, lockmode, num_chunks);
}
