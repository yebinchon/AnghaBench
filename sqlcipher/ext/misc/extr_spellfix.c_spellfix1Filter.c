
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_4__ {int idxNum; } ;
typedef TYPE_1__ spellfix1_cursor ;


 int spellfix1FilterForFullScan (TYPE_1__*,int,int **) ;
 int spellfix1FilterForMatch (TYPE_1__*,int,int **) ;

__attribute__((used)) static int spellfix1Filter(
  sqlite3_vtab_cursor *cur,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  spellfix1_cursor *pCur = (spellfix1_cursor *)cur;
  int rc;
  pCur->idxNum = idxNum;
  if( idxNum & 1 ){
    rc = spellfix1FilterForMatch(pCur, argc, argv);
  }else{
    rc = spellfix1FilterForFullScan(pCur, argc, argv);
  }
  return rc;
}
