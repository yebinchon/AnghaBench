
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int adaptive_chunking; int interval_datum; int interval_type; int * colname; int interval; int partitioning_func; int coltype; } ;
typedef int Oid ;
typedef TYPE_1__ DimensionInfo ;


 int Assert (int) ;
 scalar_t__ DIMENSION_TYPE_OPEN ;
 int ERRCODE_INVALID_FUNCTION_DEFINITION ;
 int ERROR ;
 int NameStr (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int dimension_interval_to_internal (int ,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int get_func_rettype (int ) ;
 int ts_partitioning_func_is_valid (int ,scalar_t__,int ) ;

__attribute__((used)) static void
dimension_info_validate_open(DimensionInfo *info)
{
 Oid dimtype = info->coltype;

 Assert(info->type == DIMENSION_TYPE_OPEN);

 if (OidIsValid(info->partitioning_func))
 {
  if (!ts_partitioning_func_is_valid(info->partitioning_func, info->type, info->coltype))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
      errmsg("invalid partitioning function"),
      errhint("A valid partitioning function for open (time) dimensions must be "
        "IMMUTABLE, "
        "take the column type as input, and return an integer or "
        "timestamp type.")));

  dimtype = get_func_rettype(info->partitioning_func);
 }

 info->interval = dimension_interval_to_internal(NameStr(*info->colname),
             dimtype,
             info->interval_type,
             info->interval_datum,
             info->adaptive_chunking);
}
