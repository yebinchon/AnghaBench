
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nDb; TYPE_2__* aDb; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_5__ {char* zDbSName; } ;
typedef TYPE_2__ Db ;


 scalar_t__ sqlite3_stricmp (char*,char const*) ;

int sqlite3FindDbName(sqlite3 *db, const char *zName){
  int i = -1;
  if( zName ){
    Db *pDb;
    for(i=(db->nDb-1), pDb=&db->aDb[i]; i>=0; i--, pDb--){
      if( 0==sqlite3_stricmp(pDb->zDbSName, zName) ) break;


      if( i==0 && 0==sqlite3_stricmp("main", zName) ) break;
    }
  }
  return i;
}
