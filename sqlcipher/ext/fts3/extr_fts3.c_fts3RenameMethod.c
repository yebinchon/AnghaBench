
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_4__ {scalar_t__ nPendingData; scalar_t__ zContentTbl; int zName; int zDb; scalar_t__ bHasStat; scalar_t__ bHasDocsize; int * db; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts3DbExec (int*,int *,char*,int ,int ,char const*) ;
 int fts3SetHasStat (TYPE_1__*) ;
 int sqlite3Fts3PendingTermsFlush (TYPE_1__*) ;

__attribute__((used)) static int fts3RenameMethod(
  sqlite3_vtab *pVtab,
  const char *zName
){
  Fts3Table *p = (Fts3Table *)pVtab;
  sqlite3 *db = p->db;
  int rc;



  rc = fts3SetHasStat(p);







  assert( p->nPendingData==0 );
  if( rc==SQLITE_OK ){
    rc = sqlite3Fts3PendingTermsFlush(p);
  }

  if( p->zContentTbl==0 ){
    fts3DbExec(&rc, db,
      "ALTER TABLE %Q.'%q_content'  RENAME TO '%q_content';",
      p->zDb, p->zName, zName
    );
  }

  if( p->bHasDocsize ){
    fts3DbExec(&rc, db,
      "ALTER TABLE %Q.'%q_docsize'  RENAME TO '%q_docsize';",
      p->zDb, p->zName, zName
    );
  }
  if( p->bHasStat ){
    fts3DbExec(&rc, db,
      "ALTER TABLE %Q.'%q_stat'  RENAME TO '%q_stat';",
      p->zDb, p->zName, zName
    );
  }
  fts3DbExec(&rc, db,
    "ALTER TABLE %Q.'%q_segments' RENAME TO '%q_segments';",
    p->zDb, p->zName, zName
  );
  fts3DbExec(&rc, db,
    "ALTER TABLE %Q.'%q_segdir'   RENAME TO '%q_segdir';",
    p->zDb, p->zName, zName
  );
  return rc;
}
