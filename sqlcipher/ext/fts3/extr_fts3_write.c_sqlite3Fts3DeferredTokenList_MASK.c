#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_5__ {TYPE_1__* pList; } ;
struct TYPE_4__ {int nData; int /*<<< orphan*/ * aData; } ;
typedef  TYPE_2__ Fts3DeferredToken ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(
  Fts3DeferredToken *p, 
  char **ppData, 
  int *pnData
){
  char *pRet;
  int nSkip;
  sqlite3_int64 dummy;

  *ppData = 0;
  *pnData = 0;

  if( p->pList==0 ){
    return SQLITE_OK;
  }

  pRet = (char *)FUNC2(p->pList->nData);
  if( !pRet ) return SQLITE_NOMEM;

  nSkip = FUNC1(p->pList->aData, &dummy);
  *pnData = p->pList->nData - nSkip;
  *ppData = pRet;
  
  FUNC0(pRet, &p->pList->aData[nSkip], *pnData);
  return SQLITE_OK;
}