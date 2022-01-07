
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int sqlite3DbFree (int *,char*) ;
 char* sqlite3DbStrDup (int *,char const*) ;

void sqlite3SetString(char **pz, sqlite3 *db, const char *zNew){
  sqlite3DbFree(db, *pz);
  *pz = sqlite3DbStrDup(db, zNew);
}
