
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int eState; scalar_t__ pKey; } ;
typedef TYPE_1__ BtCursor ;


 int CURSOR_INVALID ;
 int assert (int ) ;
 int cursorHoldsMutex (TYPE_1__*) ;
 int sqlite3_free (scalar_t__) ;

void sqlite3BtreeClearCursor(BtCursor *pCur){
  assert( cursorHoldsMutex(pCur) );
  sqlite3_free(pCur->pKey);
  pCur->pKey = 0;
  pCur->eState = CURSOR_INVALID;
}
