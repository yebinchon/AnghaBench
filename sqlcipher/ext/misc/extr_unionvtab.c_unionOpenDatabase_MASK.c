#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int nSrc; char* zSourceStr; int /*<<< orphan*/  nOpen; TYPE_2__* pClosable; scalar_t__ nMaxOpen; scalar_t__ bSwarm; TYPE_2__* aSrc; } ;
typedef  TYPE_1__ UnionTab ;
struct TYPE_12__ {scalar_t__ db; struct TYPE_12__* pNextClosable; } ;
typedef  TYPE_2__ UnionSrc ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,TYPE_2__*,char**) ; 
 char* FUNC8 (int*,TYPE_1__*,TYPE_2__*,char**) ; 

__attribute__((used)) static int FUNC9(UnionTab *pTab, int iSrc, char **pzErr){
  int rc = SQLITE_OK;
  UnionSrc *pSrc = &pTab->aSrc[iSrc];

  FUNC0( pTab->bSwarm && iSrc<pTab->nSrc );
  if( pSrc->db==0 ){
    FUNC5(pTab, pTab->nMaxOpen-1);
    rc = FUNC7(pTab, pSrc, pzErr);
    if( rc==SQLITE_OK ){
      char *z = FUNC8(&rc, pTab, pSrc, pzErr);
      if( rc==SQLITE_OK ){
        if( pTab->zSourceStr==0 ){
          pTab->zSourceStr = z;
        }else{
          if( FUNC4(z, pTab->zSourceStr) ){
            *pzErr = FUNC3("source table schema mismatch");
            rc = SQLITE_ERROR;
          }
          FUNC2(z);
        }
      }
    }

    if( rc==SQLITE_OK ){
      pSrc->pNextClosable = pTab->pClosable;
      pTab->pClosable = pSrc;
      pTab->nOpen++;
    }else{
      FUNC1(pSrc->db);
      pSrc->db = 0;
      FUNC6(pTab, pSrc, 1, 0);
    }
  }

  return rc;
}