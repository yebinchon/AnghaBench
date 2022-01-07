
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
struct TYPE_8__ {TYPE_2__* pRule; int zClassName; } ;
typedef TYPE_1__ fuzzer_vtab ;
struct TYPE_9__ {struct TYPE_9__* pNext; } ;
typedef TYPE_2__ fuzzer_rule ;
typedef int a ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int assert (int) ;
 int fuzzerLoadOneRule (TYPE_1__*,int *,TYPE_2__**,char**) ;
 void* fuzzerMergeRules (TYPE_2__*,TYPE_2__*) ;
 int sqlite3_column_count (int *) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,char const*,...) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int fuzzerLoadRules(
  sqlite3 *db,
  fuzzer_vtab *p,
  const char *zDb,
  const char *zData,
  char **pzErr
){
  int rc = SQLITE_OK;
  char *zSql;
  fuzzer_rule *pHead = 0;

  zSql = sqlite3_mprintf("SELECT * FROM %Q.%Q", zDb, zData);
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
          p->zClassName, zData, sqlite3_column_count(pStmt)
      );
      rc = SQLITE_ERROR;
    }else{
      while( rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pStmt) ){
        fuzzer_rule *pRule = 0;
        rc = fuzzerLoadOneRule(p, pStmt, &pRule, pzErr);
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
    fuzzer_rule *pX;
    fuzzer_rule *a[15];
    for(i=0; i<sizeof(a)/sizeof(a[0]); i++) a[i] = 0;
    while( (pX = pHead)!=0 ){
      pHead = pX->pNext;
      pX->pNext = 0;
      for(i=0; a[i] && i<sizeof(a)/sizeof(a[0])-1; i++){
        pX = fuzzerMergeRules(a[i], pX);
        a[i] = 0;
      }
      a[i] = fuzzerMergeRules(a[i], pX);
    }
    for(pX=a[0], i=1; i<sizeof(a)/sizeof(a[0]); i++){
      pX = fuzzerMergeRules(a[i], pX);
    }
    p->pRule = fuzzerMergeRules(p->pRule, pX);
  }else{



    assert( p->pRule==0 );
    p->pRule = pHead;
  }

  return rc;
}
