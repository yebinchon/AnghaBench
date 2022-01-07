
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_8__ {int db; int iNodeSize; int * pWriteNode; } ;
struct TYPE_7__ {int iNode; scalar_t__ isDirty; int zData; } ;
typedef TYPE_1__ RtreeNode ;
typedef TYPE_2__ Rtree ;


 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int nodeHashInsert (TYPE_2__*,TYPE_1__*) ;
 int sqlite3_bind_blob (int *,int,int ,int ,int ) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_bind_null (int *,int) ;
 int sqlite3_last_insert_rowid (int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int nodeWrite(Rtree *pRtree, RtreeNode *pNode){
  int rc = SQLITE_OK;
  if( pNode->isDirty ){
    sqlite3_stmt *p = pRtree->pWriteNode;
    if( pNode->iNode ){
      sqlite3_bind_int64(p, 1, pNode->iNode);
    }else{
      sqlite3_bind_null(p, 1);
    }
    sqlite3_bind_blob(p, 2, pNode->zData, pRtree->iNodeSize, SQLITE_STATIC);
    sqlite3_step(p);
    pNode->isDirty = 0;
    rc = sqlite3_reset(p);
    sqlite3_bind_null(p, 2);
    if( pNode->iNode==0 && rc==SQLITE_OK ){
      pNode->iNode = sqlite3_last_insert_rowid(pRtree->db);
      nodeHashInsert(pRtree, pNode);
    }
  }
  return rc;
}
