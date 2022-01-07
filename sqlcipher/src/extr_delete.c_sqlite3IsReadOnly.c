
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zName; scalar_t__ pSelect; } ;
typedef TYPE_1__ Table ;
typedef int Parse ;


 int sqlite3ErrorMsg (int *,char*,int ) ;
 scalar_t__ tabIsReadOnly (int *,TYPE_1__*) ;

int sqlite3IsReadOnly(Parse *pParse, Table *pTab, int viewOk){
  if( tabIsReadOnly(pParse, pTab) ){
    sqlite3ErrorMsg(pParse, "table %s may not be modified", pTab->zName);
    return 1;
  }

  if( !viewOk && pTab->pSelect ){
    sqlite3ErrorMsg(pParse,"cannot modify %s because it is a view",pTab->zName);
    return 1;
  }

  return 0;
}
