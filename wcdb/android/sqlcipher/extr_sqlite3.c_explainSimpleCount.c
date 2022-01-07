
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int zName; } ;
typedef TYPE_1__ Table ;
struct TYPE_12__ {char* zName; } ;
struct TYPE_11__ {int explain; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Index ;


 scalar_t__ HasRowid (TYPE_1__*) ;
 int IsPrimaryKeyIndex (TYPE_3__*) ;
 int sqlite3VdbeExplain (TYPE_2__*,int ,char*,int ,char*,char*) ;

__attribute__((used)) static void explainSimpleCount(
  Parse *pParse,
  Table *pTab,
  Index *pIdx
){
  if( pParse->explain==2 ){
    int bCover = (pIdx!=0 && (HasRowid(pTab) || !IsPrimaryKeyIndex(pIdx)));
    sqlite3VdbeExplain(pParse, 0, "SCAN TABLE %s%s%s",
        pTab->zName,
        bCover ? " USING COVERING INDEX " : "",
        bCover ? pIdx->zName : ""
    );
  }
}
