
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_4__ {scalar_t__ zInput; void* iLang; void* rLimit; } ;
typedef TYPE_1__ amatch_cursor ;
typedef void* amatch_cost ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int amatchAddWord (TYPE_1__*,int ,int ,char*,char*) ;
 int amatchClearCursor (TYPE_1__*) ;
 int amatchNext (int *) ;
 scalar_t__ sqlite3_mprintf (char*,char const*) ;
 scalar_t__ sqlite3_value_int (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static int amatchFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  amatch_cursor *pCur = (amatch_cursor *)pVtabCursor;
  const char *zWord = "*";
  int idx;

  amatchClearCursor(pCur);
  idx = 0;
  if( idxNum & 1 ){
    zWord = (const char*)sqlite3_value_text(argv[0]);
    idx++;
  }
  if( idxNum & 2 ){
    pCur->rLimit = (amatch_cost)sqlite3_value_int(argv[idx]);
    idx++;
  }
  if( idxNum & 4 ){
    pCur->iLang = (amatch_cost)sqlite3_value_int(argv[idx]);
    idx++;
  }
  pCur->zInput = sqlite3_mprintf("%s", zWord);
  if( pCur->zInput==0 ) return SQLITE_NOMEM;
  amatchAddWord(pCur, 0, 0, "", "");
  amatchNext(pVtabCursor);

  return SQLITE_OK;
}
