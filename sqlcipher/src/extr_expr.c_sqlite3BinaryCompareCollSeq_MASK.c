#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; } ;
typedef  int /*<<< orphan*/  Parse ;
typedef  TYPE_1__ Expr ;
typedef  int /*<<< orphan*/  CollSeq ;

/* Variables and functions */
 int EP_Collate ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

CollSeq *FUNC2(
  Parse *pParse, 
  Expr *pLeft, 
  Expr *pRight
){
  CollSeq *pColl;
  FUNC0( pLeft );
  if( pLeft->flags & EP_Collate ){
    pColl = FUNC1(pParse, pLeft);
  }else if( pRight && (pRight->flags & EP_Collate)!=0 ){
    pColl = FUNC1(pParse, pRight);
  }else{
    pColl = FUNC1(pParse, pLeft);
    if( !pColl ){
      pColl = FUNC1(pParse, pRight);
    }
  }
  return pColl;
}