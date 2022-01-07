
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {int reltablespace; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;


 scalar_t__ OidIsValid (int ) ;
 int chunk_index_select_tablespace (int ,TYPE_2__*) ;

Oid
ts_chunk_index_get_tablespace(int32 hypertable_id, Relation template_indexrel, Relation chunkrel)
{




 if (OidIsValid(template_indexrel->rd_rel->reltablespace))
  return template_indexrel->rd_rel->reltablespace;
 else
  return chunk_index_select_tablespace(hypertable_id, chunkrel);
}
