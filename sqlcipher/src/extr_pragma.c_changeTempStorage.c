
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int temp_store; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_6__ {TYPE_1__* db; } ;
typedef TYPE_2__ Parse ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int getTempStore (char const*) ;
 int invalidateTempStorage (TYPE_2__*) ;

__attribute__((used)) static int changeTempStorage(Parse *pParse, const char *zStorageType){
  int ts = getTempStore(zStorageType);
  sqlite3 *db = pParse->db;
  if( db->temp_store==ts ) return SQLITE_OK;
  if( invalidateTempStorage( pParse ) != SQLITE_OK ){
    return SQLITE_ERROR;
  }
  db->temp_store = (u8)ts;
  return SQLITE_OK;
}
