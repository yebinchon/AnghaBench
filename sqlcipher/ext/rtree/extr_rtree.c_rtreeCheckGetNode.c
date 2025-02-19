
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int i64 ;
struct TYPE_6__ {scalar_t__ rc; scalar_t__ pGetNode; int zTab; int zDb; } ;
typedef TYPE_1__ RtreeCheck ;


 scalar_t__ SQLITE_NOMEM ;
 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int memcpy (int *,int const*,int) ;
 int rtreeCheckAppendMsg (TYPE_1__*,char*,int ) ;
 scalar_t__ rtreeCheckPrepare (TYPE_1__*,char*,int ,int ) ;
 int rtreeCheckReset (TYPE_1__*,scalar_t__) ;
 int sqlite3_bind_int64 (scalar_t__,int,int ) ;
 scalar_t__ sqlite3_column_blob (scalar_t__,int ) ;
 int sqlite3_column_bytes (scalar_t__,int ) ;
 int * sqlite3_malloc64 (int) ;
 scalar_t__ sqlite3_step (scalar_t__) ;

__attribute__((used)) static u8 *rtreeCheckGetNode(RtreeCheck *pCheck, i64 iNode, int *pnNode){
  u8 *pRet = 0;

  if( pCheck->rc==SQLITE_OK && pCheck->pGetNode==0 ){
    pCheck->pGetNode = rtreeCheckPrepare(pCheck,
        "SELECT data FROM %Q.'%q_node' WHERE nodeno=?",
        pCheck->zDb, pCheck->zTab
    );
  }

  if( pCheck->rc==SQLITE_OK ){
    sqlite3_bind_int64(pCheck->pGetNode, 1, iNode);
    if( sqlite3_step(pCheck->pGetNode)==SQLITE_ROW ){
      int nNode = sqlite3_column_bytes(pCheck->pGetNode, 0);
      const u8 *pNode = (const u8*)sqlite3_column_blob(pCheck->pGetNode, 0);
      pRet = sqlite3_malloc64(nNode);
      if( pRet==0 ){
        pCheck->rc = SQLITE_NOMEM;
      }else{
        memcpy(pRet, pNode, nNode);
        *pnNode = nNode;
      }
    }
    rtreeCheckReset(pCheck, pCheck->pGetNode);
    if( pCheck->rc==SQLITE_OK && pRet==0 ){
      rtreeCheckAppendMsg(pCheck, "Node %lld missing from database", iNode);
    }
  }

  return pRet;
}
