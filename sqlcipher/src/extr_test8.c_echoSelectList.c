
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_uint64 ;
struct TYPE_5__ {int colUsed; } ;
typedef TYPE_1__ sqlite3_index_info ;
struct TYPE_6__ {int nCol; int * aCol; } ;
typedef TYPE_2__ echo_vtab ;


 int sqlite3_libversion_number () ;
 char* sqlite3_mprintf (char*,...) ;

__attribute__((used)) static char *echoSelectList(echo_vtab *pTab, sqlite3_index_info *pIdxInfo){
  char *zRet = 0;
  if( sqlite3_libversion_number()<3010000 ){
    zRet = sqlite3_mprintf(", *");
  }else{
    int i;
    for(i=0; i<pTab->nCol; i++){
      if( pIdxInfo->colUsed & ((sqlite3_uint64)1 << (i>=63 ? 63 : i)) ){
        zRet = sqlite3_mprintf("%z, %s", zRet, pTab->aCol[i]);
      }else{
        zRet = sqlite3_mprintf("%z, NULL", zRet);
      }
      if( !zRet ) break;
    }
  }
  return zRet;
}
