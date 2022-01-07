
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ eState; } ;
typedef TYPE_1__ BtCursor ;


 scalar_t__ CURSOR_VALID ;
 int SQLITE_OK ;
 int assert (int) ;
 int restoreCursorPosition (TYPE_1__*) ;

int sqlite3BtreeCursorRestore(BtCursor *pCur, int *pDifferentRow){
  int rc;

  assert( pCur!=0 );
  assert( pCur->eState!=CURSOR_VALID );
  rc = restoreCursorPosition(pCur);
  if( rc ){
    *pDifferentRow = 1;
    return rc;
  }
  if( pCur->eState!=CURSOR_VALID ){
    *pDifferentRow = 1;
  }else{
    *pDifferentRow = 0;
  }
  return SQLITE_OK;
}
