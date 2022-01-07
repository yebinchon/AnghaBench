
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int zName; } ;
struct TYPE_8__ {int rc; scalar_t__ zDataTbl; int nWorkUnit; TYPE_2__* pConfig; } ;
typedef TYPE_1__ Fts5Index ;
typedef TYPE_2__ Fts5Config ;


 int FTS5_WORK_UNIT ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3Fts5CreateTable (TYPE_2__*,char*,char*,int,char**) ;
 int sqlite3Fts5IndexClose (TYPE_1__*) ;
 int sqlite3Fts5IndexReinit (TYPE_1__*) ;
 scalar_t__ sqlite3Fts5MallocZero (int*,int) ;
 scalar_t__ sqlite3Fts5Mprintf (int*,char*,int ) ;

int sqlite3Fts5IndexOpen(
  Fts5Config *pConfig,
  int bCreate,
  Fts5Index **pp,
  char **pzErr
){
  int rc = SQLITE_OK;
  Fts5Index *p;

  *pp = p = (Fts5Index*)sqlite3Fts5MallocZero(&rc, sizeof(Fts5Index));
  if( rc==SQLITE_OK ){
    p->pConfig = pConfig;
    p->nWorkUnit = FTS5_WORK_UNIT;
    p->zDataTbl = sqlite3Fts5Mprintf(&rc, "%s_data", pConfig->zName);
    if( p->zDataTbl && bCreate ){
      rc = sqlite3Fts5CreateTable(
          pConfig, "data", "id INTEGER PRIMARY KEY, block BLOB", 0, pzErr
      );
      if( rc==SQLITE_OK ){
        rc = sqlite3Fts5CreateTable(pConfig, "idx",
            "segid, term, pgno, PRIMARY KEY(segid, term)",
            1, pzErr
        );
      }
      if( rc==SQLITE_OK ){
        rc = sqlite3Fts5IndexReinit(p);
      }
    }
  }

  assert( rc!=SQLITE_OK || p->rc==SQLITE_OK );
  if( rc ){
    sqlite3Fts5IndexClose(p);
    *pp = 0;
  }
  return rc;
}
