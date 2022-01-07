
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int nPayload; } ;
struct TYPE_7__ {scalar_t__ eState; TYPE_1__ info; } ;
typedef TYPE_2__ BtCursor ;


 scalar_t__ CURSOR_VALID ;
 int assert (int) ;
 int cursorHoldsMutex (TYPE_2__*) ;
 int getCellInfo (TYPE_2__*) ;

u32 sqlite3BtreePayloadSize(BtCursor *pCur){
  assert( cursorHoldsMutex(pCur) );
  assert( pCur->eState==CURSOR_VALID );
  getCellInfo(pCur);
  return pCur->info.nPayload;
}
