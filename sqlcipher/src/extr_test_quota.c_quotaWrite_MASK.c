#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_11__ {TYPE_1__* pMethods; } ;
typedef  TYPE_2__ sqlite3_file ;
struct TYPE_12__ {scalar_t__ iSize; scalar_t__ iLimit; int /*<<< orphan*/  pArg; int /*<<< orphan*/  (* xCallback ) (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ quotaGroup ;
struct TYPE_13__ {scalar_t__ iSize; int /*<<< orphan*/  zFilename; TYPE_3__* pGroup; } ;
typedef  TYPE_4__ quotaFile ;
struct TYPE_14__ {TYPE_4__* pFile; } ;
typedef  TYPE_5__ quotaConn ;
struct TYPE_10__ {int (* xWrite ) (TYPE_2__*,void const*,int,scalar_t__) ;} ;

/* Variables and functions */
 int SQLITE_FULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,void const*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(
  sqlite3_file *pConn,
  const void *pBuf,
  int iAmt,
  sqlite3_int64 iOfst
){
  quotaConn *p = (quotaConn*)pConn;
  sqlite3_file *pSubOpen = FUNC2(pConn);
  sqlite3_int64 iEnd = iOfst+iAmt;
  quotaGroup *pGroup;
  quotaFile *pFile = p->pFile;
  sqlite3_int64 szNew;

  if( pFile->iSize<iEnd ){
    pGroup = pFile->pGroup;
    FUNC0();
    szNew = pGroup->iSize - pFile->iSize + iEnd;
    if( szNew>pGroup->iLimit && pGroup->iLimit>0 ){
      if( pGroup->xCallback ){
        pGroup->xCallback(pFile->zFilename, &pGroup->iLimit, szNew,
                          pGroup->pArg);
      }
      if( szNew>pGroup->iLimit && pGroup->iLimit>0 ){
        FUNC1();
        return SQLITE_FULL;
      }
    }
    pGroup->iSize = szNew;
    pFile->iSize = iEnd;
    FUNC1();
  }
  return pSubOpen->pMethods->xWrite(pSubOpen, pBuf, iAmt, iOfst);
}