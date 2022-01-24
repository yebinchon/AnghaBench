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
struct TYPE_10__ {int nCol; int /*<<< orphan*/ * azCol; } ;
struct TYPE_9__ {scalar_t__ rc; TYPE_3__* pConfig; } ;
struct TYPE_8__ {int /*<<< orphan*/  n; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ Fts5Token ;
typedef  TYPE_2__ Fts5Parse ;
typedef  TYPE_3__ Fts5Config ;
typedef  char Fts5Colset ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,char*) ; 
 char* FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 

Fts5Colset *FUNC7(
  Fts5Parse *pParse,              /* Store SQLITE_NOMEM here if required */
  Fts5Colset *pColset,            /* Existing colset object */
  Fts5Token *p
){
  Fts5Colset *pRet = 0;
  int iCol;
  char *z;                        /* Dequoted copy of token p */

  z = FUNC4(&pParse->rc, p->p, p->n);
  if( pParse->rc==SQLITE_OK ){
    Fts5Config *pConfig = pParse->pConfig;
    FUNC2(z);
    for(iCol=0; iCol<pConfig->nCol; iCol++){
      if( 0==FUNC6(pConfig->azCol[iCol], z) ) break;
    }
    if( iCol==pConfig->nCol ){
      FUNC3(pParse, "no such column: %s", z);
    }else{
      pRet = FUNC1(pParse, pColset, iCol);
    }
    FUNC5(z);
  }

  if( pRet==0 ){
    FUNC0( pParse->rc!=SQLITE_OK );
    FUNC5(pColset);
  }

  return pRet;
}