
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zName; scalar_t__ pSelect; } ;
typedef TYPE_1__ Table ;
typedef int Parse ;


 scalar_t__ IsVirtual (TYPE_1__*) ;
 int sqlite3ErrorMsg (int *,char*,char const*,int ) ;

__attribute__((used)) static int isRealTable(Parse *pParse, Table *pTab){
  const char *zType = 0;

  if( pTab->pSelect ){
    zType = "view";
  }


  if( IsVirtual(pTab) ){
    zType = "virtual table";
  }

  if( zType ){
    sqlite3ErrorMsg(
        pParse, "cannot rename columns of %s \"%s\"", zType, pTab->zName
    );
    return 1;
  }
  return 0;
}
