
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int gt_opr; int lt_opr; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_9__ {int attname; scalar_t__ orderby_asc; scalar_t__ orderby_nullsfirst; } ;
struct TYPE_8__ {int atttypid; int attcollation; int attnum; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef TYPE_3__ ColumnCompressionInfo ;
typedef int AttrNumber ;


 scalar_t__ COMPRESSIONCOL_IS_SEGMENT_BY (TYPE_3__ const*) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int OidIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCacheAttName (int ,int ) ;
 int TYPECACHE_GT_OPR ;
 int TYPECACHE_LT_OPR ;
 int elog (int ,char*,int ,int ) ;
 int format_type_be (int ) ;
 TYPE_1__* lookup_type_cache (int ,int) ;

__attribute__((used)) static void
compress_chunk_populate_sort_info_for_column(Oid table, const ColumnCompressionInfo *column,
            AttrNumber *att_nums, Oid *sort_operator,
            Oid *collation, bool *nulls_first)
{
 HeapTuple tp;
 Form_pg_attribute att_tup;
 TypeCacheEntry *tentry;

 tp = SearchSysCacheAttName(table, NameStr(column->attname));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "table %d does not have column \"%s\"", table, NameStr(column->attname));

 att_tup = (Form_pg_attribute) GETSTRUCT(tp);


 *att_nums = att_tup->attnum;
 *collation = att_tup->attcollation;
 *nulls_first = (!(COMPRESSIONCOL_IS_SEGMENT_BY(column))) && column->orderby_nullsfirst;

 tentry = lookup_type_cache(att_tup->atttypid, TYPECACHE_LT_OPR | TYPECACHE_GT_OPR);

 if (COMPRESSIONCOL_IS_SEGMENT_BY(column) || column->orderby_asc)
  *sort_operator = tentry->lt_opr;
 else
  *sort_operator = tentry->gt_opr;

 if (!OidIsValid(*sort_operator))
  elog(ERROR,
    "no valid sort operator for column \"%s\" of type \"%s\"",
    NameStr(column->attname),
    format_type_be(att_tup->atttypid));

 ReleaseSysCache(tp);
}
