
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ distinctClause; scalar_t__ targetList; scalar_t__ windowClause; scalar_t__ lockingClause; scalar_t__ op; int all; int * rarg; int * larg; int * withClause; int * limitCount; int * limitOffset; int * valuesLists; int * havingClause; int * whereClause; int * intoClause; } ;
typedef TYPE_1__ SelectStmt ;


 scalar_t__ NIL ;

__attribute__((used)) static bool
select_stmt_as_expected(SelectStmt *stmt)
{


 if (stmt->distinctClause != NIL || stmt->intoClause != ((void*)0) || stmt->targetList != NIL ||
  stmt->whereClause != ((void*)0) || stmt->havingClause != ((void*)0) || stmt->windowClause != NIL ||
  stmt->valuesLists != ((void*)0) || stmt->limitOffset != ((void*)0) || stmt->limitCount != ((void*)0) ||
  stmt->lockingClause != NIL || stmt->withClause != ((void*)0) || stmt->op != 0 ||
  stmt->all != 0 || stmt->larg != ((void*)0) || stmt->rarg != ((void*)0))
  return 0;
 return 1;
}
