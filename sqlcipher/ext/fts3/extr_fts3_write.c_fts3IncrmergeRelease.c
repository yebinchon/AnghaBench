
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ n; scalar_t__ nAlloc; int* a; } ;
struct TYPE_9__ {scalar_t__ bNoLeafData; int nLeafData; int iEnd; TYPE_2__* aNodeWriter; int iStart; int iIdx; scalar_t__ iAbsLevel; } ;
struct TYPE_7__ {scalar_t__ nAlloc; int* a; } ;
struct TYPE_8__ {TYPE_1__ key; TYPE_4__ block; int iBlock; } ;
typedef TYPE_2__ NodeWriter ;
typedef TYPE_3__ IncrmergeWriter ;
typedef int Fts3Table ;
typedef TYPE_4__ Blob ;


 scalar_t__ FTS3_VARINT_MAX ;
 int FTS_MAX_APPENDABLE_HEIGHT ;
 int SQLITE_OK ;
 int assert (int) ;
 int blobGrowBuffer (TYPE_4__*,scalar_t__,int*) ;
 int fts3WriteSegdir (int *,scalar_t__,int ,int ,int ,int ,int ,int*,scalar_t__) ;
 int fts3WriteSegment (int *,int ,int*,scalar_t__) ;
 scalar_t__ sqlite3Fts3PutVarint (int*,int ) ;
 int sqlite3_free (int*) ;

__attribute__((used)) static void fts3IncrmergeRelease(
  Fts3Table *p,
  IncrmergeWriter *pWriter,
  int *pRc
){
  int i;
  int iRoot;
  NodeWriter *pRoot;
  int rc = *pRc;





  for(iRoot=FTS_MAX_APPENDABLE_HEIGHT-1; iRoot>=0; iRoot--){
    NodeWriter *pNode = &pWriter->aNodeWriter[iRoot];
    if( pNode->block.n>0 ) break;
    assert( *pRc || pNode->block.nAlloc==0 );
    assert( *pRc || pNode->key.nAlloc==0 );
    sqlite3_free(pNode->block.a);
    sqlite3_free(pNode->key.a);
  }


  if( iRoot<0 ) return;
  if( iRoot==0 ){
    Blob *pBlock = &pWriter->aNodeWriter[1].block;
    blobGrowBuffer(pBlock, 1 + FTS3_VARINT_MAX, &rc);
    if( rc==SQLITE_OK ){
      pBlock->a[0] = 0x01;
      pBlock->n = 1 + sqlite3Fts3PutVarint(
          &pBlock->a[1], pWriter->aNodeWriter[0].iBlock
      );
    }
    iRoot = 1;
  }
  pRoot = &pWriter->aNodeWriter[iRoot];


  for(i=0; i<iRoot; i++){
    NodeWriter *pNode = &pWriter->aNodeWriter[i];
    if( pNode->block.n>0 && rc==SQLITE_OK ){
      rc = fts3WriteSegment(p, pNode->iBlock, pNode->block.a, pNode->block.n);
    }
    sqlite3_free(pNode->block.a);
    sqlite3_free(pNode->key.a);
  }


  if( rc==SQLITE_OK ){
    rc = fts3WriteSegdir(p,
        pWriter->iAbsLevel+1,
        pWriter->iIdx,
        pWriter->iStart,
        pWriter->aNodeWriter[0].iBlock,
        pWriter->iEnd,
        (pWriter->bNoLeafData==0 ? pWriter->nLeafData : 0),
        pRoot->block.a, pRoot->block.n
    );
  }
  sqlite3_free(pRoot->block.a);
  sqlite3_free(pRoot->key.a);

  *pRc = rc;
}
