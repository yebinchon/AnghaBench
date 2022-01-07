
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ eState; } ;
typedef TYPE_1__ BtCursor ;


 scalar_t__ CURSOR_VALID ;
 int accessPayload (TYPE_1__*,int ,int ,void*,int ) ;
 int accessPayloadChecked (TYPE_1__*,int ,int ,void*) ;
 int assert (int ) ;
 int cursorOwnsBtShared (TYPE_1__*) ;

int sqlite3BtreePayloadChecked(BtCursor *pCur, u32 offset, u32 amt, void *pBuf){
  if( pCur->eState==CURSOR_VALID ){
    assert( cursorOwnsBtShared(pCur) );
    return accessPayload(pCur, offset, amt, pBuf, 0);
  }else{
    return accessPayloadChecked(pCur, offset, amt, pBuf);
  }
}
