
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_18__ {int ii_Expressions; } ;
struct TYPE_17__ {int rd_id; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef TYPE_2__ IndexInfo ;


 TYPE_2__* BuildIndexInfo (TYPE_1__*) ;
 int RelationGetDescr (TYPE_1__*) ;
 int adjust_expr_attnos (int ,TYPE_2__*,TYPE_1__*) ;
 int chunk_adjust_colref_attnos (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ chunk_index_need_attnos_adjustment (int ,int ) ;
 scalar_t__ list_length (int ) ;
 int ts_chunk_index_create_post_adjustment (int ,TYPE_1__*,TYPE_1__*,TYPE_2__*,int,int ) ;
 int ts_hypertable_relid_to_id (int ) ;

__attribute__((used)) static Oid
chunk_relation_index_create(Relation htrel, Relation template_indexrel, Relation chunkrel,
       bool isconstraint, Oid index_tablespace)
{
 IndexInfo *indexinfo = BuildIndexInfo(template_indexrel);
 int32 hypertable_id;





 if (chunk_index_need_attnos_adjustment(RelationGetDescr(htrel), RelationGetDescr(chunkrel)))
 {
  if (list_length(indexinfo->ii_Expressions) == 0)
   chunk_adjust_colref_attnos(indexinfo, template_indexrel, chunkrel);
  else
  {
   adjust_expr_attnos(htrel->rd_id, indexinfo, chunkrel);
  }
 }

 hypertable_id = ts_hypertable_relid_to_id(htrel->rd_id);

 return ts_chunk_index_create_post_adjustment(hypertable_id,
             template_indexrel,
             chunkrel,
             indexinfo,
             isconstraint,
             index_tablespace);
}
