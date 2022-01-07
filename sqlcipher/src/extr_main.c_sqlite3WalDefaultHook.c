
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int SQLITE_OK ;
 int SQLITE_PTR_TO_INT (void*) ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3EndBenignMalloc () ;
 int sqlite3_wal_checkpoint (int *,char const*) ;

int sqlite3WalDefaultHook(
  void *pClientData,
  sqlite3 *db,
  const char *zDb,
  int nFrame
){
  if( nFrame>=SQLITE_PTR_TO_INT(pClientData) ){
    sqlite3BeginBenignMalloc();
    sqlite3_wal_checkpoint(db, zDb);
    sqlite3EndBenignMalloc();
  }
  return SQLITE_OK;
}
