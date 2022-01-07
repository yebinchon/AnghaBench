
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int column_name; } ;
struct TYPE_7__ {TYPE_1__ fd; } ;
struct TYPE_6__ {int num_dimensions; TYPE_3__* dimensions; } ;
typedef int List ;
typedef TYPE_2__ Hyperspace ;
typedef TYPE_3__ Dimension ;


 int ERRCODE_TS_BAD_HYPERTABLE_INDEX_DEFINITION ;
 int ERROR ;
 int NameStr (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int index_has_attribute (int *,int ) ;

void
ts_indexing_verify_columns(Hyperspace *hs, List *indexelems)
{
 int i;

 for (i = 0; i < hs->num_dimensions; i++)
 {
  Dimension *dim = &hs->dimensions[i];

  if (!index_has_attribute(indexelems, NameStr(dim->fd.column_name)))
   ereport(ERROR,
     (errcode(ERRCODE_TS_BAD_HYPERTABLE_INDEX_DEFINITION),
      errmsg("cannot create a unique index without the column \"%s\" (used in "
       "partitioning)",
       NameStr(dim->fd.column_name))));
 }
}
