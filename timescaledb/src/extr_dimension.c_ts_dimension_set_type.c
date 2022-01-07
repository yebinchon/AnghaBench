
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; int column_type; int column_name; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef int Oid ;
typedef TYPE_2__ Dimension ;


 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERROR ;
 int IS_VALID_OPEN_DIM_TYPE (int ) ;
 int NameStr (int ) ;
 int RowExclusiveLock ;
 int dimension_scan_update (int ,int ,TYPE_2__*,int ) ;
 int dimension_tuple_update ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,int ,int ,int ) ;
 int format_type_be (int ) ;

int
ts_dimension_set_type(Dimension *dim, Oid newtype)
{
 if (!IS_VALID_OPEN_DIM_TYPE(newtype))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
     errmsg("cannot change data type of hypertable column \"%s\" from %s to %s",
      NameStr(dim->fd.column_name),
      format_type_be(dim->fd.column_type),
      format_type_be(newtype)),
     errdetail("time dimension of hypertable can only have types: TIMESTAMP, "
         "TIMESTAMPTZ, and DATE")));

 dim->fd.column_type = newtype;

 return dimension_scan_update(dim->fd.id, dimension_tuple_update, dim, RowExclusiveLock);
}
