
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t szLeaf; int * p; scalar_t__ nn; } ;
struct TYPE_9__ {scalar_t__ iLeafPgno; size_t iPgidxOff; scalar_t__ iEndofDoclist; TYPE_3__* pLeaf; TYPE_3__* pNextLeaf; TYPE_1__* pSeg; } ;
struct TYPE_8__ {scalar_t__ pgnoLast; int iSegid; } ;
typedef TYPE_1__ Fts5StructureSegment ;
typedef TYPE_2__ Fts5SegIter ;
typedef int Fts5Index ;
typedef TYPE_3__ Fts5Data ;


 int FTS5_SEGMENT_ROWID (int ,scalar_t__) ;
 int fts5DataRelease (TYPE_3__*) ;
 scalar_t__ fts5GetVarint32 (int *,scalar_t__) ;
 scalar_t__ fts5LeafIsTermless (TYPE_3__*) ;
 TYPE_3__* fts5LeafRead (int *,int ) ;

__attribute__((used)) static void fts5SegIterNextPage(
  Fts5Index *p,
  Fts5SegIter *pIter
){
  Fts5Data *pLeaf;
  Fts5StructureSegment *pSeg = pIter->pSeg;
  fts5DataRelease(pIter->pLeaf);
  pIter->iLeafPgno++;
  if( pIter->pNextLeaf ){
    pIter->pLeaf = pIter->pNextLeaf;
    pIter->pNextLeaf = 0;
  }else if( pIter->iLeafPgno<=pSeg->pgnoLast ){
    pIter->pLeaf = fts5LeafRead(p,
        FTS5_SEGMENT_ROWID(pSeg->iSegid, pIter->iLeafPgno)
    );
  }else{
    pIter->pLeaf = 0;
  }
  pLeaf = pIter->pLeaf;

  if( pLeaf ){
    pIter->iPgidxOff = pLeaf->szLeaf;
    if( fts5LeafIsTermless(pLeaf) ){
      pIter->iEndofDoclist = pLeaf->nn+1;
    }else{
      pIter->iPgidxOff += fts5GetVarint32(&pLeaf->p[pIter->iPgidxOff],
          pIter->iEndofDoclist
      );
    }
  }
}
