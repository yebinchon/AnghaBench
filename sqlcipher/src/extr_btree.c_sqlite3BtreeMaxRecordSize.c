
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_6__ {scalar_t__ eState; TYPE_1__* pBt; } ;
struct TYPE_5__ {int pageSize; scalar_t__ nPage; } ;
typedef TYPE_2__ BtCursor ;


 scalar_t__ CURSOR_VALID ;
 int assert (int) ;
 int cursorHoldsMutex (TYPE_2__*) ;

sqlite3_int64 sqlite3BtreeMaxRecordSize(BtCursor *pCur){
  assert( cursorHoldsMutex(pCur) );
  assert( pCur->eState==CURSOR_VALID );
  return pCur->pBt->pageSize * (sqlite3_int64)pCur->pBt->nPage;
}
