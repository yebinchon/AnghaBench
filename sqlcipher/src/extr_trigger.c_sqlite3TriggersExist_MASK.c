#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int op; int tr_tm; int /*<<< orphan*/  pColumns; struct TYPE_9__* pNext; } ;
typedef  TYPE_2__ Trigger ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_10__ {TYPE_1__* db; } ;
struct TYPE_8__ {int flags; } ;
typedef  TYPE_3__ Parse ;
typedef  int /*<<< orphan*/  ExprList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int SQLITE_EnableTrigger ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 

Trigger *FUNC4(
  Parse *pParse,          /* Parse context */
  Table *pTab,            /* The table the contains the triggers */
  int op,                 /* one of TK_DELETE, TK_INSERT, TK_UPDATE */
  ExprList *pChanges,     /* Columns that change in an UPDATE statement */
  int *pMask              /* OUT: Mask of TRIGGER_BEFORE|TRIGGER_AFTER */
){
  int mask = 0;
  Trigger *pList = 0;
  Trigger *p;

  if( (pParse->db->flags & SQLITE_EnableTrigger)!=0 ){
    pList = FUNC3(pParse, pTab);
  }
  FUNC1( pList==0 || FUNC0(pTab)==0 );
  for(p=pList; p; p=p->pNext){
    if( p->op==op && FUNC2(p->pColumns, pChanges) ){
      mask |= p->tr_tm;
    }
  }
  if( pMask ){
    *pMask = mask;
  }
  return (mask ? pList : 0);
}