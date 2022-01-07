
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rc; } ;
typedef TYPE_1__ sqlite3rbu ;


 int SQLITE_MISUSE ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* sqlite3_malloc64 (int) ;

__attribute__((used)) static sqlite3rbu *rbuMisuseError(void){
  sqlite3rbu *pRet;
  pRet = sqlite3_malloc64(sizeof(sqlite3rbu));
  if( pRet ){
    memset(pRet, 0, sizeof(sqlite3rbu));
    pRet->rc = SQLITE_MISUSE;
  }
  return pRet;
}
