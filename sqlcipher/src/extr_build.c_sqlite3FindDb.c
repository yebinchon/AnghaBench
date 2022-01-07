
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int Token ;


 int sqlite3DbFree (int *,char*) ;
 int sqlite3FindDbName (int *,char*) ;
 char* sqlite3NameFromToken (int *,int *) ;

int sqlite3FindDb(sqlite3 *db, Token *pName){
  int i;
  char *zName;
  zName = sqlite3NameFromToken(db, pName);
  i = sqlite3FindDbName(db, zName);
  sqlite3DbFree(db, zName);
  return i;
}
