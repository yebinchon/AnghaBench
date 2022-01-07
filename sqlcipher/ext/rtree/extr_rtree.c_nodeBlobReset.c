
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_blob ;
struct TYPE_3__ {scalar_t__ inWrTrans; scalar_t__ nCursor; int * pNodeBlob; } ;
typedef TYPE_1__ Rtree ;


 int sqlite3_blob_close (int *) ;

__attribute__((used)) static void nodeBlobReset(Rtree *pRtree){
  if( pRtree->pNodeBlob && pRtree->inWrTrans==0 && pRtree->nCursor==0 ){
    sqlite3_blob *pBlob = pRtree->pNodeBlob;
    pRtree->pNodeBlob = 0;
    sqlite3_blob_close(pBlob);
  }
}
