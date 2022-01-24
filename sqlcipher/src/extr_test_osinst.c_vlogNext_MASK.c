#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ pVtab; } ;
typedef  TYPE_2__ sqlite3_vtab_cursor ;
struct TYPE_11__ {scalar_t__ nByte; TYPE_6__* pFd; } ;
typedef  TYPE_3__ VfslogVtab ;
struct TYPE_12__ {char* zTransient; scalar_t__ iOffset; unsigned char* aBuf; int nFile; char** azFile; int iRowid; } ;
typedef  TYPE_4__ VfslogCsr ;
struct TYPE_13__ {TYPE_1__* pMethods; } ;
struct TYPE_9__ {int (* xRead ) (TYPE_6__*,unsigned char*,int,scalar_t__) ;} ;

/* Variables and functions */
 int OS_ACCESS ; 
 int OS_DELETE ; 
 int OS_OPEN ; 
 int SQLITE_OK ; 
 int FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char**,int) ; 
 int FUNC5 (TYPE_6__*,unsigned char*,int,scalar_t__) ; 
 int FUNC6 (TYPE_6__*,char*,int,scalar_t__) ; 
 int FUNC7 (TYPE_6__*,char*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(sqlite3_vtab_cursor *pCursor){
  VfslogCsr *pCsr = (VfslogCsr *)pCursor;
  VfslogVtab *p = (VfslogVtab *)pCursor->pVtab;
  int rc = SQLITE_OK;
  int nRead;

  FUNC2(pCsr->zTransient);
  pCsr->zTransient = 0;

  nRead = 24;
  if( pCsr->iOffset+nRead<=p->nByte ){
    int eEvent;
    rc = p->pFd->pMethods->xRead(p->pFd, pCsr->aBuf, nRead, pCsr->iOffset);

    eEvent = FUNC0(pCsr->aBuf);
    if( (rc==SQLITE_OK)
     && (eEvent==OS_OPEN || eEvent==OS_DELETE || eEvent==OS_ACCESS) 
    ){
      char buf[4];
      rc = p->pFd->pMethods->xRead(p->pFd, buf, 4, pCsr->iOffset+nRead);
      nRead += 4;
      if( rc==SQLITE_OK ){
        int nStr = FUNC0((unsigned char *)buf);
        char *zStr = FUNC3(nStr+1);
        rc = p->pFd->pMethods->xRead(p->pFd, zStr, nStr, pCsr->iOffset+nRead);
        zStr[nStr] = '\0';
        nRead += nStr;

        if( eEvent==OS_OPEN ){
          int iFileid = FUNC0(&pCsr->aBuf[4]);
          if( iFileid>=pCsr->nFile ){
            int nNew = sizeof(pCsr->azFile[0])*(iFileid+1);
            pCsr->azFile = (char **)FUNC4(pCsr->azFile, nNew);
            nNew -= sizeof(pCsr->azFile[0])*pCsr->nFile;
            FUNC1(&pCsr->azFile[pCsr->nFile], 0, nNew);
            pCsr->nFile = iFileid+1;
          }
          FUNC2(pCsr->azFile[iFileid]);
          pCsr->azFile[iFileid] = zStr;
        }else{
          pCsr->zTransient = zStr;
        }
      }
    }
  }

  pCsr->iRowid += 1;
  pCsr->iOffset += nRead;
  return rc;
}