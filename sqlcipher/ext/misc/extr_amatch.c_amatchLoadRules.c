
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
struct TYPE_8__ {TYPE_2__* pRule; int zCostTab; int zClassName; int zDb; } ;
typedef TYPE_1__ amatch_vtab ;
struct TYPE_9__ {struct TYPE_9__* pNext; } ;
typedef TYPE_2__ amatch_rule ;
typedef int a ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int amatchLoadOneRule (TYPE_1__*,int *,TYPE_2__**,char**) ;
 void* amatchMergeRules (TYPE_2__*,TYPE_2__*) ;
 int assert (int) ;
 int sqlite3_column_count (int *) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ,int ,...) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int amatchLoadRules(
  sqlite3 *db,
  amatch_vtab *p,
  char **pzErr
){
  int rc = SQLITE_OK;
  char *zSql;
  amatch_rule *pHead = 0;

  zSql = sqlite3_mprintf("SELECT * FROM %Q.%Q", p->zDb, p->zCostTab);
  if( zSql==0 ){
    rc = SQLITE_NOMEM;
  }else{
    int rc2;
    sqlite3_stmt *pStmt = 0;
    rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, 0);
    if( rc!=SQLITE_OK ){
      *pzErr = sqlite3_mprintf("%s: %s", p->zClassName, sqlite3_errmsg(db));
    }else if( sqlite3_column_count(pStmt)!=4 ){
      *pzErr = sqlite3_mprintf("%s: %s has %d columns, expected 4",
          p->zClassName, p->zCostTab, sqlite3_column_count(pStmt)
      );
      rc = SQLITE_ERROR;
    }else{
      while( rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pStmt) ){
        amatch_rule *pRule = 0;
        rc = amatchLoadOneRule(p, pStmt, &pRule, pzErr);
        if( pRule ){
          pRule->pNext = pHead;
          pHead = pRule;
        }
      }
    }
    rc2 = sqlite3_finalize(pStmt);
    if( rc==SQLITE_OK ) rc = rc2;
  }
  sqlite3_free(zSql);





  if( rc==SQLITE_OK ){
    unsigned int i;
    amatch_rule *pX;
    amatch_rule *a[15];
    for(i=0; i<sizeof(a)/sizeof(a[0]); i++) a[i] = 0;
    while( (pX = pHead)!=0 ){
      pHead = pX->pNext;
      pX->pNext = 0;
      for(i=0; a[i] && i<sizeof(a)/sizeof(a[0])-1; i++){
        pX = amatchMergeRules(a[i], pX);
        a[i] = 0;
      }
      a[i] = amatchMergeRules(a[i], pX);
    }
    for(pX=a[0], i=1; i<sizeof(a)/sizeof(a[0]); i++){
      pX = amatchMergeRules(a[i], pX);
    }
    p->pRule = amatchMergeRules(p->pRule, pX);
  }else{



    assert( p->pRule==0 );
    p->pRule = pHead;
  }

  return rc;
}
