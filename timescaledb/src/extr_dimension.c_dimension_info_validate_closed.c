
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int * colname; int num_slices; int num_slices_is_set; int coltype; int partitioning_func; } ;
typedef TYPE_1__ DimensionInfo ;


 int Assert (int) ;
 scalar_t__ DIMENSION_TYPE_CLOSED ;
 int ERRCODE_INVALID_FUNCTION_DEFINITION ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int IS_VALID_NUM_SLICES (int ) ;
 int NameStr (int ) ;
 int OidIsValid (int ) ;
 int PG_INT16_MAX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,...) ;
 int errmsg (char*,...) ;
 int ts_partitioning_func_get_closed_default () ;
 int ts_partitioning_func_is_valid (int ,scalar_t__,int ) ;

__attribute__((used)) static void
dimension_info_validate_closed(DimensionInfo *info)
{
 Assert(info->type == DIMENSION_TYPE_CLOSED);

 if (!OidIsValid(info->partitioning_func))
  info->partitioning_func = ts_partitioning_func_get_closed_default();
 else if (!ts_partitioning_func_is_valid(info->partitioning_func, info->type, info->coltype))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
     errmsg("invalid partitioning function"),
     errhint("A valid partitioning function for closed (space) dimensions must be "
       "IMMUTABLE "
       "and have the signature (anyelement) -> integer.")));

 if (!info->num_slices_is_set || !IS_VALID_NUM_SLICES(info->num_slices))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid number of partitions for dimension \"%s\"",
      NameStr(*info->colname)),
     errhint("A closed (space) dimension must specify between 1 and %d partitions.",
       PG_INT16_MAX)));
}
