
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ii_Expressions; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__ IndexInfo ;


 int adjust_expr_attnos (int ,TYPE_1__*,int ) ;
 int chunk_adjust_colref_attnos (TYPE_1__*,int ,int ) ;
 scalar_t__ list_length (int ) ;

void
ts_adjust_indexinfo_attnos(IndexInfo *indexinfo, Oid ht_relid, Relation template_indexrel,
         Relation chunkrel)
{
 if (list_length(indexinfo->ii_Expressions) == 0)
  chunk_adjust_colref_attnos(indexinfo, template_indexrel, chunkrel);
 else
  adjust_expr_attnos(ht_relid, indexinfo, chunkrel);
}
