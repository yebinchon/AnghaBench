
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
struct TYPE_4__ {int sz; struct TYPE_4__* pNext; scalar_t__* a; int seq; int id; } ;
typedef TYPE_1__ Blob ;


 scalar_t__ SQLITE_ROW ;
 int fatalError (char*,int ) ;
 int memcpy (scalar_t__*,int ,int) ;
 TYPE_1__* safe_realloc (int ,int) ;
 int sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_int (int *,int ) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,...) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void blobListLoadFromDb(
  sqlite3 *db,
  const char *zSql,
  int onlyId,
  int *pN,
  Blob **ppList
){
  Blob head;
  Blob *p;
  sqlite3_stmt *pStmt;
  int n = 0;
  int rc;
  char *z2;

  if( onlyId>0 ){
    z2 = sqlite3_mprintf("%s WHERE rowid=%d", zSql, onlyId);
  }else{
    z2 = sqlite3_mprintf("%s", zSql);
  }
  rc = sqlite3_prepare_v2(db, z2, -1, &pStmt, 0);
  sqlite3_free(z2);
  if( rc ) fatalError("%s", sqlite3_errmsg(db));
  head.pNext = 0;
  p = &head;
  while( SQLITE_ROW==sqlite3_step(pStmt) ){
    int sz = sqlite3_column_bytes(pStmt, 1);
    Blob *pNew = safe_realloc(0, sizeof(*pNew)+sz );
    pNew->id = sqlite3_column_int(pStmt, 0);
    pNew->sz = sz;
    pNew->seq = n++;
    pNew->pNext = 0;
    memcpy(pNew->a, sqlite3_column_blob(pStmt,1), sz);
    pNew->a[sz] = 0;
    p->pNext = pNew;
    p = pNew;
  }
  sqlite3_finalize(pStmt);
  *pN = n;
  *ppList = head.pNext;
}
