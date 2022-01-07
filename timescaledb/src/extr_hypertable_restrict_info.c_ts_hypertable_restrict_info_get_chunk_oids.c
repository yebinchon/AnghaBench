
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ num_dimensions; } ;
struct TYPE_8__ {TYPE_5__* space; } ;
struct TYPE_7__ {scalar_t__ num_dimensions; } ;
typedef int List ;
typedef int LOCKMODE ;
typedef TYPE_1__ HypertableRestrictInfo ;
typedef TYPE_2__ Hypertable ;


 int Assert (int) ;
 int * gather_restriction_dimension_vectors (TYPE_1__*) ;
 int * ts_chunk_find_all_oids (TYPE_5__*,int *,int ) ;

List *
ts_hypertable_restrict_info_get_chunk_oids(HypertableRestrictInfo *hri, Hypertable *ht,
             LOCKMODE lockmode)
{
 List *dimension_vecs = gather_restriction_dimension_vectors(hri);

 Assert(hri->num_dimensions == ht->space->num_dimensions);

 return ts_chunk_find_all_oids(ht->space, dimension_vecs, lockmode);
}
