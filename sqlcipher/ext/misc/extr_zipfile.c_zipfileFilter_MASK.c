#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_11__ {scalar_t__ pVtab; } ;
typedef  TYPE_1__ sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_12__ {char* zFile; scalar_t__ pFirstEntry; scalar_t__ pLastEntry; scalar_t__ pWriteFd; } ;
typedef  TYPE_2__ ZipfileTab ;
struct TYPE_14__ {scalar_t__ nEntry; int /*<<< orphan*/  iOffset; } ;
struct TYPE_13__ {scalar_t__ pFreeEntry; scalar_t__ pFile; int bEof; int bNoop; scalar_t__ pCurrent; TYPE_6__ eocd; int /*<<< orphan*/  iNextOff; } ;
typedef  TYPE_3__ ZipfileCsr ;

/* Variables and functions */
 scalar_t__ SQLITE_BLOB ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,...) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC11(
  sqlite3_vtab_cursor *cur, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  ZipfileTab *pTab = (ZipfileTab*)cur->pVtab;
  ZipfileCsr *pCsr = (ZipfileCsr*)cur;
  const char *zFile = 0;          /* Zip file to scan */
  int rc = SQLITE_OK;             /* Return Code */
  int bInMemory = 0;              /* True for an in-memory zipfile */

  FUNC10(pCsr);

  if( pTab->zFile ){
    zFile = pTab->zFile;
  }else if( idxNum==0 ){
    FUNC6(pCsr, "zipfile() function requires an argument");
    return SQLITE_ERROR;
  }else if( FUNC5(argv[0])==SQLITE_BLOB ){
    const u8 *aBlob = (const u8*)FUNC2(argv[0]);
    int nBlob = FUNC3(argv[0]);
    FUNC0( pTab->pFirstEntry==0 );
    rc = FUNC7(pTab, aBlob, nBlob);
    pCsr->pFreeEntry = pTab->pFirstEntry;
    pTab->pFirstEntry = pTab->pLastEntry = 0;
    if( rc!=SQLITE_OK ) return rc;
    bInMemory = 1;
  }else{
    zFile = (const char*)FUNC4(argv[0]);
  }

  if( 0==pTab->pWriteFd && 0==bInMemory ){
    pCsr->pFile = FUNC1(zFile, "rb");
    if( pCsr->pFile==0 ){
      FUNC6(pCsr, "cannot open file: %s", zFile);
      rc = SQLITE_ERROR;
    }else{
      rc = FUNC9(pTab, 0, 0, pCsr->pFile, &pCsr->eocd);
      if( rc==SQLITE_OK ){
        if( pCsr->eocd.nEntry==0 ){
          pCsr->bEof = 1;
        }else{
          pCsr->iNextOff = pCsr->eocd.iOffset;
          rc = FUNC8(cur);
        }
      }
    }
  }else{
    pCsr->bNoop = 1;
    pCsr->pCurrent = pCsr->pFreeEntry ? pCsr->pFreeEntry : pTab->pFirstEntry;
    rc = FUNC8(cur);
  }

  return rc;
}