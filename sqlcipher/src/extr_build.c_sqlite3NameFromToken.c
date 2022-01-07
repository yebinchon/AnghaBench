
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_3__ {int n; scalar_t__ z; } ;
typedef TYPE_1__ Token ;


 char* sqlite3DbStrNDup (int *,char*,int ) ;
 int sqlite3Dequote (char*) ;

char *sqlite3NameFromToken(sqlite3 *db, Token *pName){
  char *zName;
  if( pName ){
    zName = sqlite3DbStrNDup(db, (char*)pName->z, pName->n);
    sqlite3Dequote(zName);
  }else{
    zName = 0;
  }
  return zName;
}
