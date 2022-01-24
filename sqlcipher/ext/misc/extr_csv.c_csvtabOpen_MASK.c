#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_7__ {char** azVal; int* aLen; int /*<<< orphan*/  rdr; int /*<<< orphan*/  base; } ;
struct TYPE_6__ {int nCol; int /*<<< orphan*/  zData; int /*<<< orphan*/  zFilename; } ;
typedef  TYPE_1__ CsvTable ;
typedef  TYPE_2__ CsvCursor ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_2__* FUNC3 (size_t) ; 

__attribute__((used)) static int FUNC4(sqlite3_vtab *p, sqlite3_vtab_cursor **ppCursor){
  CsvTable *pTab = (CsvTable*)p;
  CsvCursor *pCur;
  size_t nByte;
  nByte = sizeof(*pCur) + (sizeof(char*)+sizeof(int))*pTab->nCol;
  pCur = FUNC3( nByte );
  if( pCur==0 ) return SQLITE_NOMEM;
  FUNC2(pCur, 0, nByte);
  pCur->azVal = (char**)&pCur[1];
  pCur->aLen = (int*)&pCur->azVal[pTab->nCol];
  *ppCursor = &pCur->base;
  if( FUNC0(&pCur->rdr, pTab->zFilename, pTab->zData) ){
    FUNC1(pTab, &pCur->rdr);
    return SQLITE_ERROR;
  }
  return SQLITE_OK;
}