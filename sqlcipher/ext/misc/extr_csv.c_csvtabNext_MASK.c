#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ pVtab; } ;
typedef  TYPE_1__ sqlite3_vtab_cursor ;
struct TYPE_12__ {char cTerm; scalar_t__ n; } ;
struct TYPE_11__ {scalar_t__* aLen; char** azVal; int iRowid; TYPE_6__ rdr; } ;
struct TYPE_10__ {int nCol; } ;
typedef  TYPE_2__ CsvTable ;
typedef  TYPE_3__ CsvCursor ;

/* Variables and functions */
 char EOF ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*) ; 
 char* FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(sqlite3_vtab_cursor *cur){
  CsvCursor *pCur = (CsvCursor*)cur;
  CsvTable *pTab = (CsvTable*)cur->pVtab;
  int i = 0;
  char *z;
  do{
    z = FUNC1(&pCur->rdr);
    if( z==0 ){
      break;
    }
    if( i<pTab->nCol ){
      if( pCur->aLen[i] < pCur->rdr.n+1 ){
        char *zNew = FUNC5(pCur->azVal[i], pCur->rdr.n+1);
        if( zNew==0 ){
          FUNC0(&pCur->rdr, "out of memory");
          FUNC2(pTab, &pCur->rdr);
          break;
        }
        pCur->azVal[i] = zNew;
        pCur->aLen[i] = pCur->rdr.n+1;
      }
      FUNC3(pCur->azVal[i], z, pCur->rdr.n+1);
      i++;
    }
  }while( pCur->rdr.cTerm==',' );
  if( z==0 || (pCur->rdr.cTerm==EOF && i<pTab->nCol) ){
    pCur->iRowid = -1;
  }else{
    pCur->iRowid++;
    while( i<pTab->nCol ){
      FUNC4(pCur->azVal[i]);
      pCur->azVal[i] = 0;
      pCur->aLen[i] = 0;
      i++;
    }
  }
  return SQLITE_OK;
}