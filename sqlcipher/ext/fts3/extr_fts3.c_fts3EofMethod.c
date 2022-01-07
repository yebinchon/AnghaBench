
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_3__ {int isEof; } ;
typedef TYPE_1__ Fts3Cursor ;


 int fts3ClearCursor (TYPE_1__*) ;

__attribute__((used)) static int fts3EofMethod(sqlite3_vtab_cursor *pCursor){
  Fts3Cursor *pCsr = (Fts3Cursor*)pCursor;
  if( pCsr->isEof ){
    fts3ClearCursor(pCsr);
    pCsr->isEof = 1;
  }
  return pCsr->isEof;
}
