
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int removeType; } ;
struct TYPE_12__ {scalar_t__ parsetree; } ;
typedef TYPE_1__ ProcessUtilityArgs ;
typedef TYPE_2__ DropStmt ;





 int block_dropping_continuous_aggregates_without_cascade (TYPE_1__*,TYPE_2__*) ;
 int process_drop_chunk (TYPE_1__*,TYPE_2__*) ;
 int process_drop_hypertable (TYPE_1__*,TYPE_2__*) ;
 int process_drop_hypertable_index (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void
process_drop(ProcessUtilityArgs *args)
{
 DropStmt *stmt = (DropStmt *) args->parsetree;

 switch (stmt->removeType)
 {
  case 129:
   process_drop_hypertable(args, stmt);
   process_drop_chunk(args, stmt);
   break;
  case 130:
   process_drop_hypertable_index(args, stmt);
   break;
  case 128:
   block_dropping_continuous_aggregates_without_cascade(args, stmt);
   break;
  default:
   break;
 }
}
