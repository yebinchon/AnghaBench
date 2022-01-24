#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ nCol; } ;
struct TYPE_15__ {TYPE_4__* pColset; } ;
struct TYPE_14__ {scalar_t__ eType; int nChild; struct TYPE_14__** apChild; scalar_t__ xNext; TYPE_3__* pNear; } ;
struct TYPE_13__ {scalar_t__ rc; } ;
typedef  TYPE_1__ Fts5Parse ;
typedef  TYPE_2__ Fts5ExprNode ;
typedef  TYPE_3__ Fts5ExprNearset ;
typedef  TYPE_4__ Fts5Colset ;

/* Variables and functions */
 scalar_t__ FTS5_AND ; 
 scalar_t__ FTS5_EOF ; 
 scalar_t__ FTS5_NOT ; 
 scalar_t__ FTS5_OR ; 
 scalar_t__ FTS5_STRING ; 
 scalar_t__ FTS5_TERM ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (scalar_t__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_4__*) ; 

__attribute__((used)) static void FUNC3(
  Fts5Parse *pParse, 
  Fts5ExprNode *pNode, 
  Fts5Colset *pColset,
  Fts5Colset **ppFree
){
  if( pParse->rc==SQLITE_OK ){
    FUNC0( pNode->eType==FTS5_TERM || pNode->eType==FTS5_STRING 
         || pNode->eType==FTS5_AND  || pNode->eType==FTS5_OR
         || pNode->eType==FTS5_NOT  || pNode->eType==FTS5_EOF
    );
    if( pNode->eType==FTS5_STRING || pNode->eType==FTS5_TERM ){
      Fts5ExprNearset *pNear = pNode->pNear;
      if( pNear->pColset ){
        FUNC2(pNear->pColset, pColset);
        if( pNear->pColset->nCol==0 ){
          pNode->eType = FTS5_EOF;
          pNode->xNext = 0;
        }
      }else if( *ppFree ){
        pNear->pColset = pColset;
        *ppFree = 0;
      }else{
        pNear->pColset = FUNC1(&pParse->rc, pColset);
      }
    }else{
      int i;
      FUNC0( pNode->eType!=FTS5_EOF || pNode->nChild==0 );
      for(i=0; i<pNode->nChild; i++){
        FUNC3(pParse, pNode->apChild[i], pColset, ppFree);
      }
    }
  }
}