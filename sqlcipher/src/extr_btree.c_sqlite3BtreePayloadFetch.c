
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int BtCursor ;


 void const* fetchPayload (int *,int *) ;

const void *sqlite3BtreePayloadFetch(BtCursor *pCur, u32 *pAmt){
  return fetchPayload(pCur, pAmt);
}
