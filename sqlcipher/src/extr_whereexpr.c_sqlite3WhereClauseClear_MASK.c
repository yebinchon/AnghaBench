#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_9__ {int /*<<< orphan*/  pAndInfo; int /*<<< orphan*/  pOrInfo; } ;
struct TYPE_11__ {int wtFlags; TYPE_2__ u; int /*<<< orphan*/  pExpr; } ;
typedef  TYPE_4__ WhereTerm ;
struct TYPE_12__ {int nTerm; TYPE_4__* a; TYPE_4__* aStatic; TYPE_1__* pWInfo; } ;
typedef  TYPE_5__ WhereClause ;
struct TYPE_10__ {int /*<<< orphan*/ * db; } ;
struct TYPE_8__ {TYPE_3__* pParse; } ;

/* Variables and functions */
 int TERM_ANDINFO ; 
 int TERM_DYNAMIC ; 
 int TERM_ORINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(WhereClause *pWC){
  int i;
  WhereTerm *a;
  sqlite3 *db = pWC->pWInfo->pParse->db;
  for(i=pWC->nTerm-1, a=pWC->a; i>=0; i--, a++){
    if( a->wtFlags & TERM_DYNAMIC ){
      FUNC1(db, a->pExpr);
    }
    if( a->wtFlags & TERM_ORINFO ){
      FUNC3(db, a->u.pOrInfo);
    }else if( a->wtFlags & TERM_ANDINFO ){
      FUNC2(db, a->u.pAndInfo);
    }
  }
  if( pWC->a!=pWC->aStatic ){
    FUNC0(db, pWC->a);
  }
}