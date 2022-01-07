
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int EditDist3Config ;


 int SQLITE_DETERMINISTIC ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_UTF8 ;
 int editDist3ConfigDelete ;
 int editDist3SqlFunc ;
 int memset (int *,int ,int) ;
 int sqlite3_create_function_v2 (int *,char*,int,int,int *,int ,int ,int ,int ) ;
 int sqlite3_free (int *) ;
 int * sqlite3_malloc64 (int) ;

__attribute__((used)) static int editDist3Install(sqlite3 *db){
  int rc;
  EditDist3Config *pConfig = sqlite3_malloc64( sizeof(*pConfig) );
  if( pConfig==0 ) return SQLITE_NOMEM;
  memset(pConfig, 0, sizeof(*pConfig));
  rc = sqlite3_create_function_v2(db, "editdist3",
              2, SQLITE_UTF8|SQLITE_DETERMINISTIC, pConfig,
              editDist3SqlFunc, 0, 0, 0);
  if( rc==SQLITE_OK ){
    rc = sqlite3_create_function_v2(db, "editdist3",
                3, SQLITE_UTF8|SQLITE_DETERMINISTIC, pConfig,
                editDist3SqlFunc, 0, 0, 0);
  }
  if( rc==SQLITE_OK ){
    rc = sqlite3_create_function_v2(db, "editdist3",
                1, SQLITE_UTF8|SQLITE_DETERMINISTIC, pConfig,
                editDist3SqlFunc, 0, 0, editDist3ConfigDelete);
  }else{
    sqlite3_free(pConfig);
  }
  return rc;
}
