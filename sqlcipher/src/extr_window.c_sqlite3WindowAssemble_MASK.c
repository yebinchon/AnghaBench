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
struct TYPE_8__ {int /*<<< orphan*/  zBase; int /*<<< orphan*/ * pOrderBy; int /*<<< orphan*/ * pPartition; } ;
typedef  TYPE_1__ Window ;
struct TYPE_9__ {int /*<<< orphan*/  n; int /*<<< orphan*/  z; } ;
typedef  TYPE_2__ Token ;
struct TYPE_10__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_3__ Parse ;
typedef  int /*<<< orphan*/  ExprList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

Window *FUNC2(
  Parse *pParse, 
  Window *pWin, 
  ExprList *pPartition, 
  ExprList *pOrderBy, 
  Token *pBase
){
  if( pWin ){
    pWin->pPartition = pPartition;
    pWin->pOrderBy = pOrderBy;
    if( pBase ){
      pWin->zBase = FUNC0(pParse->db, pBase->z, pBase->n);
    }
  }else{
    FUNC1(pParse->db, pPartition);
    FUNC1(pParse->db, pOrderBy);
  }
  return pWin;
}