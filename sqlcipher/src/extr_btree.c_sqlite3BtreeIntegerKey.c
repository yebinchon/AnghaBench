
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_6__ {int nKey; } ;
struct TYPE_7__ {scalar_t__ eState; int curIntKey; TYPE_1__ info; } ;
typedef TYPE_2__ BtCursor ;


 scalar_t__ CURSOR_VALID ;
 int assert (int) ;
 int cursorHoldsMutex (TYPE_2__*) ;
 int getCellInfo (TYPE_2__*) ;

i64 sqlite3BtreeIntegerKey(BtCursor *pCur){
  assert( cursorHoldsMutex(pCur) );
  assert( pCur->eState==CURSOR_VALID );
  assert( pCur->curIntKey );
  getCellInfo(pCur);
  return pCur->info.nKey;
}
