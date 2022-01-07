
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; int interval; int partitioning_func; int num_slices; int coltype; int * colname; TYPE_2__* ht; int dimension_id; int table_relid; scalar_t__ set_not_null; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef TYPE_3__ DimensionInfo ;


 int Assert (int ) ;
 scalar_t__ DIMENSION_TYPE_OPEN ;
 int NameStr (int ) ;
 int dimension_add_not_null_on_column (int ,int ) ;
 int dimension_insert (int ,int *,int ,int ,int ,int ) ;

void
ts_dimension_add_from_info(DimensionInfo *info)
{
 if (info->set_not_null && info->type == DIMENSION_TYPE_OPEN)
  dimension_add_not_null_on_column(info->table_relid, NameStr(*info->colname));

 Assert(info->ht != ((void*)0));

 info->dimension_id = dimension_insert(info->ht->fd.id,
            info->colname,
            info->coltype,
            info->num_slices,
            info->partitioning_func,
            info->interval);
}
