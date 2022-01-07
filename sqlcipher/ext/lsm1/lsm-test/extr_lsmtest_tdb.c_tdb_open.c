
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zLibrary; } ;
typedef TYPE_1__ TestDb ;
struct TYPE_7__ {int (* xOpen ) (char const*,char const*,int,TYPE_1__**) ;char const* zDefaultDb; int zName; } ;


 int ArraySize (TYPE_4__*) ;
 TYPE_4__* aLib ;
 scalar_t__ memcmp (char const*,int ,int) ;
 scalar_t__ strlen (int ) ;
 int stub1 (char const*,char const*,int,TYPE_1__**) ;

int tdb_open(const char *zLib, const char *zDb, int bClear, TestDb **ppDb){
  int i;
  int rc = 1;
  const char *zSpec = 0;

  int nLib = 0;
  while( zLib[nLib] && zLib[nLib]!=' ' ){
    nLib++;
  }
  zSpec = &zLib[nLib];
  while( *zSpec==' ' ) zSpec++;
  if( *zSpec=='\0' ) zSpec = 0;

  for(i=0; i<ArraySize(aLib); i++){
    if( (int)strlen(aLib[i].zName)==nLib
        && 0==memcmp(zLib, aLib[i].zName, nLib) ){
      rc = aLib[i].xOpen(zSpec, (zDb ? zDb : aLib[i].zDefaultDb), bClear, ppDb);
      if( rc==0 ){
        (*ppDb)->zLibrary = aLib[i].zName;
      }
      break;
    }
  }

  if( rc ){

    *ppDb = 0;
  }
  return rc;
}
