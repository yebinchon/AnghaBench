
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_2__ {int nStr; scalar_t__ iRowid; scalar_t__ zStr; } ;
typedef TYPE_1__ prefixes_cursor ;


 int SQLITE_OK ;
 int sqlite3_free (scalar_t__) ;
 scalar_t__ sqlite3_mprintf (char*,int ) ;
 int sqlite3_value_text (int *) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static int prefixesFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  prefixes_cursor *pCur = (prefixes_cursor *)pVtabCursor;
  sqlite3_free(pCur->zStr);
  if( argc>0 ){
    pCur->zStr = sqlite3_mprintf("%s", sqlite3_value_text(argv[0]));
    pCur->nStr = pCur->zStr ? (int)strlen(pCur->zStr) : 0;
  }else{
    pCur->zStr = 0;
    pCur->nStr = 0;
  }
  pCur->iRowid = 0;
  return SQLITE_OK;
}
