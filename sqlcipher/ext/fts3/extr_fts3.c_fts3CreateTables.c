
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {scalar_t__ zContentTbl; char* zLanguageid; int nColumn; char** azColumn; scalar_t__ bHasStat; scalar_t__ bFts4; int zName; int zDb; scalar_t__ bHasDocsize; int * db; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3DbExec (int*,int *,char*,int ,int ,...) ;
 int sqlite3Fts3CreateStatTable (int*,TYPE_1__*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,...) ;

__attribute__((used)) static int fts3CreateTables(Fts3Table *p){
  int rc = SQLITE_OK;
  int i;
  sqlite3 *db = p->db;

  if( p->zContentTbl==0 ){
    const char *zLanguageid = p->zLanguageid;
    char *zContentCols;


    zContentCols = sqlite3_mprintf("docid INTEGER PRIMARY KEY");
    for(i=0; zContentCols && i<p->nColumn; i++){
      char *z = p->azColumn[i];
      zContentCols = sqlite3_mprintf("%z, 'c%d%q'", zContentCols, i, z);
    }
    if( zLanguageid && zContentCols ){
      zContentCols = sqlite3_mprintf("%z, langid", zContentCols, zLanguageid);
    }
    if( zContentCols==0 ) rc = SQLITE_NOMEM;


    fts3DbExec(&rc, db,
       "CREATE TABLE %Q.'%q_content'(%s)",
       p->zDb, p->zName, zContentCols
    );
    sqlite3_free(zContentCols);
  }


  fts3DbExec(&rc, db,
      "CREATE TABLE %Q.'%q_segments'(blockid INTEGER PRIMARY KEY, block BLOB);",
      p->zDb, p->zName
  );
  fts3DbExec(&rc, db,
      "CREATE TABLE %Q.'%q_segdir'("
        "level INTEGER,"
        "idx INTEGER,"
        "start_block INTEGER,"
        "leaves_end_block INTEGER,"
        "end_block INTEGER,"
        "root BLOB,"
        "PRIMARY KEY(level, idx)"
      ");",
      p->zDb, p->zName
  );
  if( p->bHasDocsize ){
    fts3DbExec(&rc, db,
        "CREATE TABLE %Q.'%q_docsize'(docid INTEGER PRIMARY KEY, size BLOB);",
        p->zDb, p->zName
    );
  }
  assert( p->bHasStat==p->bFts4 );
  if( p->bHasStat ){
    sqlite3Fts3CreateStatTable(&rc, p);
  }
  return rc;
}
