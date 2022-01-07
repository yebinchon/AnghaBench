
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int indexParams; int * excludeOpNames; scalar_t__ unique; } ;
typedef TYPE_1__ IndexStmt ;
typedef int Hyperspace ;


 int ts_indexing_verify_columns (int *,int ) ;

void
ts_indexing_verify_index(Hyperspace *hs, IndexStmt *stmt)
{
 if (stmt->unique || stmt->excludeOpNames != ((void*)0))
  ts_indexing_verify_columns(hs, stmt->indexParams);
}
