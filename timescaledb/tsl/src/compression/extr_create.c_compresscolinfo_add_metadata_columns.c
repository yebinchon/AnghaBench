
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int lt_opr; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_17__ {int numcols; TYPE_4__* col_meta; void* coldeflist; } ;
struct TYPE_16__ {scalar_t__ orderby_column_index; int attname; } ;
struct TYPE_15__ {int atttypid; } ;
struct TYPE_14__ {int rd_id; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* Form_pg_attribute ;
typedef TYPE_4__ FormData_hypertable_compression ;
typedef TYPE_5__ CompressColInfo ;
typedef int AttrNumber ;


 int AttrNumberGetAttrOffset (int ) ;
 int COMPRESSION_COLUMN_METADATA_COUNT_NAME ;
 int COMPRESSION_COLUMN_METADATA_SEQUENCE_NUM_NAME ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int INT4OID ;
 int NameStr (int ) ;
 int OidIsValid (int ) ;
 int RelationGetDescr (TYPE_2__*) ;
 int TYPECACHE_LT_OPR ;
 TYPE_3__* TupleDescAttr (int ,int ) ;
 int compression_column_segment_max_name (TYPE_4__*) ;
 int compression_column_segment_min_name (TYPE_4__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int ) ;
 int get_attnum (int ,int ) ;
 void* lappend (void*,int ) ;
 TYPE_1__* lookup_type_cache (int ,int ) ;
 int makeColumnDef (int ,int ,int,int ) ;

__attribute__((used)) static void
compresscolinfo_add_metadata_columns(CompressColInfo *cc, Relation uncompressed_rel)
{



 int colno;


 cc->coldeflist = lappend(cc->coldeflist,


        makeColumnDef(COMPRESSION_COLUMN_METADATA_COUNT_NAME,
             INT4OID,
             -1 ,
             0 ));

 cc->coldeflist = lappend(cc->coldeflist,


        makeColumnDef(COMPRESSION_COLUMN_METADATA_SEQUENCE_NUM_NAME,
             INT4OID,
             -1 ,
             0 ));

 for (colno = 0; colno < cc->numcols; colno++)
 {
  if (cc->col_meta[colno].orderby_column_index > 0)
  {
   FormData_hypertable_compression fd = cc->col_meta[colno];
   AttrNumber col_attno = get_attnum(uncompressed_rel->rd_id, NameStr(fd.attname));
   Form_pg_attribute attr = TupleDescAttr(RelationGetDescr(uncompressed_rel),
               AttrNumberGetAttrOffset(col_attno));
   TypeCacheEntry *type = lookup_type_cache(attr->atttypid, TYPECACHE_LT_OPR);

   if (!OidIsValid(type->lt_opr))
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_FUNCTION),
       errmsg("invalid order by column type: could not identify an less-than "
        "operator for type %s",
        format_type_be(attr->atttypid))));


   cc->coldeflist =
    lappend(cc->coldeflist,
      makeColumnDef(compression_column_segment_min_name(&cc->col_meta[colno]),
           attr->atttypid,
           -1 ,
           0 ));
   cc->coldeflist =
    lappend(cc->coldeflist,
      makeColumnDef(compression_column_segment_max_name(&cc->col_meta[colno]),
           attr->atttypid,
           -1 ,
           0 ));
  }
 }
}
