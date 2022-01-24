#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {int bPoint; scalar_t__* aNode; TYPE_2__ sPoint; TYPE_1__* aPoint; scalar_t__ nPoint; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  RtreeNode ;
typedef  TYPE_3__ RtreeCursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static RtreeNode *FUNC3(RtreeCursor *pCur, int *pRC){
  sqlite3_int64 id;
  int ii = 1 - pCur->bPoint;
  FUNC1( ii==0 || ii==1 );
  FUNC1( pCur->bPoint || pCur->nPoint );
  if( pCur->aNode[ii]==0 ){
    FUNC1( pRC!=0 );
    id = ii ? pCur->aPoint[0].id : pCur->sPoint.id;
    *pRC = FUNC2(FUNC0(pCur), id, 0, &pCur->aNode[ii]);
  }
  return pCur->aNode[ii];
}