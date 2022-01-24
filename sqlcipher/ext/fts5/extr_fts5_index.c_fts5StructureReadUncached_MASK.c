#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int iCookie; } ;
struct TYPE_10__ {size_t nn; int /*<<< orphan*/ * p; } ;
struct TYPE_9__ {int /*<<< orphan*/  rc; TYPE_3__* pConfig; } ;
typedef  int /*<<< orphan*/  Fts5Structure ;
typedef  TYPE_1__ Fts5Index ;
typedef  TYPE_2__ Fts5Data ;
typedef  TYPE_3__ Fts5Config ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_DATA_PADDING ; 
 int /*<<< orphan*/  FTS5_STRUCTURE_ROWID ; 
 int /*<<< orphan*/  SQLITE_OK ; 
 TYPE_2__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 

__attribute__((used)) static Fts5Structure *FUNC6(Fts5Index *p){
  Fts5Structure *pRet = 0;
  Fts5Config *pConfig = p->pConfig;
  int iCookie;                    /* Configuration cookie */
  Fts5Data *pData;

  pData = FUNC0(p, FTS5_STRUCTURE_ROWID);
  if( p->rc==SQLITE_OK ){
    /* TODO: Do we need this if the leaf-index is appended? Probably... */
    FUNC4(&pData->p[pData->nn], 0, FTS5_DATA_PADDING);
    p->rc = FUNC2(pData->p, pData->nn, &iCookie, &pRet);
    if( p->rc==SQLITE_OK && pConfig->iCookie!=iCookie ){
      p->rc = FUNC5(pConfig, iCookie);
    }
    FUNC1(pData);
    if( p->rc!=SQLITE_OK ){
      FUNC3(pRet);
      pRet = 0;
    }
  }

  return pRet;
}