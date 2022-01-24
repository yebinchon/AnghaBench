#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nLvl; TYPE_1__* aLvl; int /*<<< orphan*/  iSegid; } ;
struct TYPE_7__ {scalar_t__ bEof; scalar_t__ pData; int /*<<< orphan*/  iLeafPgno; } ;
typedef  int /*<<< orphan*/  Fts5Index ;
typedef  TYPE_1__ Fts5DlidxLvl ;
typedef  TYPE_2__ Fts5DlidxIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(Fts5Index *p, Fts5DlidxIter *pIter, int iLvl){
  Fts5DlidxLvl *pLvl = &pIter->aLvl[iLvl];

  FUNC1( iLvl<pIter->nLvl );
  if( FUNC5(pLvl) ){
    if( (iLvl+1) < pIter->nLvl ){
      FUNC7(p, pIter, iLvl+1);
      if( pLvl[1].bEof==0 ){
        FUNC3(pLvl->pData);
        FUNC6(pLvl, 0, sizeof(Fts5DlidxLvl));
        pLvl->pData = FUNC2(p, 
            FUNC0(pIter->iSegid, iLvl, pLvl[1].iLeafPgno)
        );
        if( pLvl->pData ){
          while( FUNC4(pLvl)==0 );
          pLvl->bEof = 0;
        }
      }
    }
  }

  return pIter->aLvl[0].bEof;
}