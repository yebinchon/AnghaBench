
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int root; int oldroot; } ;
struct TYPE_8__ {TYPE_1__ treehdr; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_9__ {int iNode; int * pRoot; TYPE_2__* pDb; } ;
typedef TYPE_3__ TreeCursor ;


 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void treeCursorInit(lsm_db *pDb, int bOld, TreeCursor *pCsr){
  memset(pCsr, 0, sizeof(TreeCursor));
  pCsr->pDb = pDb;
  if( bOld ){
    pCsr->pRoot = &pDb->treehdr.oldroot;
  }else{
    pCsr->pRoot = &pDb->treehdr.root;
  }
  pCsr->iNode = -1;
}
