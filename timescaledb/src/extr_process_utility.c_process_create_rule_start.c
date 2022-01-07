
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ parsetree; } ;
struct TYPE_4__ {int relation; } ;
typedef TYPE_1__ RuleStmt ;
typedef TYPE_2__ ProcessUtilityArgs ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ ts_hypertable_relid (int ) ;

__attribute__((used)) static void
process_create_rule_start(ProcessUtilityArgs *args)
{
 RuleStmt *stmt = (RuleStmt *) args->parsetree;

 if (ts_hypertable_relid(stmt->relation) == InvalidOid)
  return;

 ereport(ERROR,
   (errcode(ERRCODE_FEATURE_NOT_SUPPORTED), errmsg("hypertables do not support rules")));
}
