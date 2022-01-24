#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_12__ {int /*<<< orphan*/  nData; int /*<<< orphan*/  pData; } ;
struct TYPE_11__ {int iInstOff; int bEof; TYPE_4__* pIter; int /*<<< orphan*/  iInstPos; TYPE_2__* pFts5; } ;
struct TYPE_10__ {TYPE_1__* pConfig; } ;
struct TYPE_9__ {int eDetail; } ;
typedef  TYPE_3__ Fts5VocabCursor ;
typedef  TYPE_4__ Fts5IndexIter ;

/* Variables and functions */
 int FTS5_DETAIL_NONE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(Fts5VocabCursor *pCsr){
  int eDetail = pCsr->pFts5->pConfig->eDetail;
  int rc = SQLITE_OK;
  Fts5IndexIter *pIter = pCsr->pIter;
  i64 *pp = &pCsr->iInstPos;
  int *po = &pCsr->iInstOff;
  
  FUNC0( FUNC2(pIter)==0 );
  FUNC0( pCsr->bEof==0 );
  while( eDetail==FTS5_DETAIL_NONE
      || FUNC4(pIter->pData, pIter->nData, po, pp) 
  ){
    pCsr->iInstPos = 0;
    pCsr->iInstOff = 0;

    rc = FUNC3(pCsr->pIter);
    if( rc==SQLITE_OK ){
      rc = FUNC1(pCsr);
      if( pCsr->bEof || eDetail==FTS5_DETAIL_NONE ) break;
    }
    if( rc ){
      pCsr->bEof = 1;
      break;
    }
  }

  return rc;
}