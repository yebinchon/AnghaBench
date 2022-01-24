#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_10__ {int nCol; scalar_t__ eContent; scalar_t__ bColumnsize; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pIndex; TYPE_2__* pConfig; int /*<<< orphan*/ * aTotalSize; } ;
typedef  TYPE_1__ Fts5Storage ;
typedef  int /*<<< orphan*/  Fts5Index ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 scalar_t__ FTS5_CONTENT_NORMAL ; 
 int /*<<< orphan*/  FTS5_CURRENT_VERSION ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (TYPE_2__*,char*,char*,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*,...) ; 
 scalar_t__ FUNC7 (char*) ; 

int FUNC8(
  Fts5Config *pConfig, 
  Fts5Index *pIndex, 
  int bCreate, 
  Fts5Storage **pp,
  char **pzErr                    /* OUT: Error message */
){
  int rc = SQLITE_OK;
  Fts5Storage *p;                 /* New object */
  sqlite3_int64 nByte;            /* Bytes of space to allocate */

  nByte = sizeof(Fts5Storage)               /* Fts5Storage object */
        + pConfig->nCol * sizeof(i64);      /* Fts5Storage.aTotalSize[] */
  *pp = p = (Fts5Storage*)FUNC5(nByte);
  if( !p ) return SQLITE_NOMEM;

  FUNC0(p, 0, (size_t)nByte);
  p->aTotalSize = (i64*)&p[1];
  p->pConfig = pConfig;
  p->pIndex = pIndex;

  if( bCreate ){
    if( pConfig->eContent==FTS5_CONTENT_NORMAL ){
      int nDefn = 32 + pConfig->nCol*10;
      char *zDefn = FUNC5(32 + (sqlite3_int64)pConfig->nCol * 10);
      if( zDefn==0 ){
        rc = SQLITE_NOMEM;
      }else{
        int i;
        int iOff;
        FUNC6(nDefn, zDefn, "id INTEGER PRIMARY KEY");
        iOff = (int)FUNC7(zDefn);
        for(i=0; i<pConfig->nCol; i++){
          FUNC6(nDefn-iOff, &zDefn[iOff], ", c%d", i);
          iOff += (int)FUNC7(&zDefn[iOff]);
        }
        rc = FUNC1(pConfig, "content", zDefn, 0, pzErr);
      }
      FUNC4(zDefn);
    }

    if( rc==SQLITE_OK && pConfig->bColumnsize ){
      rc = FUNC1(
          pConfig, "docsize", "id INTEGER PRIMARY KEY, sz BLOB", 0, pzErr
      );
    }
    if( rc==SQLITE_OK ){
      rc = FUNC1(
          pConfig, "config", "k PRIMARY KEY, v", 1, pzErr
      );
    }
    if( rc==SQLITE_OK ){
      rc = FUNC3(p, "version", 0, FTS5_CURRENT_VERSION);
    }
  }

  if( rc ){
    FUNC2(p);
    *pp = 0;
  }
  return rc;
}