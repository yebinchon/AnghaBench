
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int id; } ;
struct TYPE_13__ {TYPE_2__ fd; } ;
struct TYPE_12__ {int set_not_null; int skip; int type; int * colname; int dimension_id; int if_not_exists; TYPE_1__* ht; int coltype; int table_relid; int interval_type; scalar_t__ num_slices_is_set; } ;
struct TYPE_10__ {int space; } ;
typedef int HeapTuple ;
typedef TYPE_3__ DimensionInfo ;
typedef TYPE_4__ Dimension ;
typedef int Datum ;


 int ATTNAME ;
 int Anum_pg_attribute_attnotnull ;
 int Anum_pg_attribute_atttypid ;
 int Assert (int) ;
 int DIMENSION_INFO_IS_SET (TYPE_3__*) ;



 int DatumGetBool (int ) ;
 int DatumGetObjectId (int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_TS_DUPLICATE_DIMENSION ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int NOTICE ;
 int NameStr (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCacheAttName (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int dimension_info_validate_closed (TYPE_3__*) ;
 int dimension_info_validate_open (TYPE_3__*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 TYPE_4__* ts_hyperspace_get_dimension_by_name (int ,int,int ) ;

void
ts_dimension_info_validate(DimensionInfo *info)
{
 Dimension *dim;
 HeapTuple tuple;
 Datum datum;
 bool isnull = 0;

 if (!DIMENSION_INFO_IS_SET(info))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE), errmsg("invalid dimension info")));

 if (info->num_slices_is_set && OidIsValid(info->interval_type))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("cannot specify both the number of partitions and an interval")));


 tuple = SearchSysCacheAttName(info->table_relid, NameStr(*info->colname));

 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_COLUMN),
     errmsg("column \"%s\" does not exist", NameStr(*info->colname))));

 datum = SysCacheGetAttr(ATTNAME, tuple, Anum_pg_attribute_atttypid, &isnull);
 Assert(!isnull);

 info->coltype = DatumGetObjectId(datum);

 datum = SysCacheGetAttr(ATTNAME, tuple, Anum_pg_attribute_attnotnull, &isnull);
 Assert(!isnull);

 info->set_not_null = !DatumGetBool(datum);

 ReleaseSysCache(tuple);

 if (((void*)0) != info->ht)
 {

  dim = ts_hyperspace_get_dimension_by_name(info->ht->space,
              130,
              NameStr(*info->colname));

  if (((void*)0) != dim)
  {
   if (!info->if_not_exists)
    ereport(ERROR,
      (errcode(ERRCODE_TS_DUPLICATE_DIMENSION),
       errmsg("column \"%s\" is already a dimension", NameStr(*info->colname))));

   info->dimension_id = dim->fd.id;
   info->skip = 1;

   ereport(NOTICE,
     (errmsg("column \"%s\" is already a dimension, skipping",
       NameStr(*info->colname))));
   return;
  }
 }

 switch (info->type)
 {
  case 129:
   dimension_info_validate_closed(info);
   break;
  case 128:
   dimension_info_validate_open(info);
   break;
  case 130:
   elog(ERROR, "invalid dimension type in configuration");
   break;
 }
}
