
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int values; } ;
typedef TYPE_3__ oidvector ;
typedef int int32 ;
typedef int bits16 ;
struct TYPE_15__ {int rd_indoption; int rd_indcollation; TYPE_2__* rd_rel; TYPE_1__* rd_index; int rd_indextuple; } ;
struct TYPE_13__ {int relam; } ;
struct TYPE_12__ {scalar_t__ indisprimary; } ;
typedef TYPE_4__* Relation ;
typedef int Oid ;
typedef int List ;
typedef int IndexInfo ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_class_reloptions ;
 int Anum_pg_index_indclass ;
 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int INDEXRELID ;
 int INDEX_CREATE_ADD_CONSTRAINT ;
 int INDEX_CREATE_IS_PRIMARY ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int RELOID ;
 int RelationGetRelid (TYPE_4__*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 char* chunk_index_choose_name (int ,int ,int ) ;
 int * create_index_colnames (TYPE_4__*) ;
 int elog (int ,char*,int ) ;
 int get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 int index_create_compat (TYPE_4__*,char const*,int ,int ,int *,int *,int ,int ,int ,int ,int ,int ,int ,int ,int,int) ;
 int ts_chunk_index_get_tablespace (int ,TYPE_4__*,TYPE_4__*) ;

__attribute__((used)) static Oid
ts_chunk_index_create_post_adjustment(int32 hypertable_id, Relation template_indexrel,
           Relation chunkrel, IndexInfo *indexinfo, bool isconstraint,
           Oid index_tablespace)
{
 Oid chunk_indexrelid = InvalidOid;
 const char *indexname;
 HeapTuple tuple;
 bool isnull;
 Datum reloptions;
 Datum indclass;
 oidvector *indclassoid;
 List *colnames = create_index_colnames(template_indexrel);
 Oid tablespace;
 bits16 flags = 0;

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(RelationGetRelid(template_indexrel)));

 if (!HeapTupleIsValid(tuple))
  elog(ERROR,
    "cache lookup failed for index relation %u",
    RelationGetRelid(template_indexrel));

 reloptions = SysCacheGetAttr(RELOID, tuple, Anum_pg_class_reloptions, &isnull);

 indclass = SysCacheGetAttr(INDEXRELID,
          template_indexrel->rd_indextuple,
          Anum_pg_index_indclass,
          &isnull);
 Assert(!isnull);
 indclassoid = (oidvector *) DatumGetPointer(indclass);

 indexname = chunk_index_choose_name(get_rel_name(RelationGetRelid(chunkrel)),
          get_rel_name(RelationGetRelid(template_indexrel)),
          get_rel_namespace(RelationGetRelid(chunkrel)));
 if (OidIsValid(index_tablespace))
  tablespace = index_tablespace;
 else
  tablespace = ts_chunk_index_get_tablespace(hypertable_id, template_indexrel, chunkrel);


 if (isconstraint)
  flags |= INDEX_CREATE_ADD_CONSTRAINT;
 if (template_indexrel->rd_index->indisprimary)
  flags |= INDEX_CREATE_IS_PRIMARY;

 chunk_indexrelid = index_create_compat(chunkrel,
             indexname,
             InvalidOid,
             InvalidOid,
             indexinfo,
             colnames,
             template_indexrel->rd_rel->relam,
             tablespace,
             template_indexrel->rd_indcollation,
             indclassoid->values,
             template_indexrel->rd_indoption,
             reloptions,
             flags,
             0,

             0,
             0);

 ReleaseSysCache(tuple);

 return chunk_indexrelid;
}
