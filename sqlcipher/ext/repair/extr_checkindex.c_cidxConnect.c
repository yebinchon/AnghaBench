
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_3__ {int * db; } ;
typedef TYPE_1__ CidxTable ;


 int SQLITE_OK ;
 TYPE_1__* cidxMalloc (int*,int) ;
 int sqlite3_declare_vtab (int *,char*) ;

__attribute__((used)) static int cidxConnect(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  int rc = SQLITE_OK;
  CidxTable *pRet;






  rc = sqlite3_declare_vtab(db,
      "CREATE TABLE xyz("
      " errmsg TEXT,"
      " current_key TEXT,"
      " index_name HIDDEN,"
      " after_key HIDDEN,"
      " scanner_sql HIDDEN"
      ")"
  );
  pRet = cidxMalloc(&rc, sizeof(CidxTable));
  if( pRet ){
    pRet->db = db;
  }

  *ppVtab = (sqlite3_vtab*)pRet;
  return rc;
}
