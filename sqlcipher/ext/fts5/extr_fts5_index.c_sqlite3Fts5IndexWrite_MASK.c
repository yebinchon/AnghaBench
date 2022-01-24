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
struct TYPE_5__ {int nPrefix; int* aPrefix; } ;
struct TYPE_4__ {int rc; int bDelete; int /*<<< orphan*/  iWriteRowid; int /*<<< orphan*/  pHash; TYPE_2__* pConfig; } ;
typedef  TYPE_1__ Fts5Index ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 char FTS5_MAIN_PREFIX ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char,char const*,int) ; 
 int FUNC2 (char const*,int,int const) ; 

int FUNC3(
  Fts5Index *p,                   /* Index to write to */
  int iCol,                       /* Column token appears in (-ve -> delete) */
  int iPos,                       /* Position of token within column */
  const char *pToken, int nToken  /* Token to add or remove to or from index */
){
  int i;                          /* Used to iterate through indexes */
  int rc = SQLITE_OK;             /* Return code */
  Fts5Config *pConfig = p->pConfig;

  FUNC0( p->rc==SQLITE_OK );
  FUNC0( (iCol<0)==p->bDelete );

  /* Add the entry to the main terms index. */
  rc = FUNC1(
      p->pHash, p->iWriteRowid, iCol, iPos, FTS5_MAIN_PREFIX, pToken, nToken
  );

  for(i=0; i<pConfig->nPrefix && rc==SQLITE_OK; i++){
    const int nChar = pConfig->aPrefix[i];
    int nByte = FUNC2(pToken, nToken, nChar);
    if( nByte ){
      rc = FUNC1(p->pHash, 
          p->iWriteRowid, iCol, iPos, (char)(FTS5_MAIN_PREFIX+i+1), pToken,
          nByte
      );
    }
  }

  return rc;
}