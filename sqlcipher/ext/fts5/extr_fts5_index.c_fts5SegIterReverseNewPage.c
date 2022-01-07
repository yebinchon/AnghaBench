
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_16__ {scalar_t__ szLeaf; scalar_t__ nn; int * p; } ;
struct TYPE_15__ {scalar_t__ rc; } ;
struct TYPE_14__ {int flags; scalar_t__ iLeafPgno; scalar_t__ iTermLeafPgno; scalar_t__ iTermLeafOffset; int iLeafOffset; TYPE_4__* pLeaf; scalar_t__ iEndofDoclist; int iRowid; TYPE_1__* pSeg; } ;
struct TYPE_13__ {int iSegid; } ;
typedef TYPE_2__ Fts5SegIter ;
typedef TYPE_3__ Fts5Index ;
typedef TYPE_4__ Fts5Data ;


 int FTS5_SEGITER_ONETERM ;
 int FTS5_SEGITER_REVERSE ;
 int FTS5_SEGMENT_ROWID (int ,scalar_t__) ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 TYPE_4__* fts5DataRead (TYPE_3__*,int ) ;
 int fts5DataRelease (TYPE_4__*) ;
 scalar_t__ fts5GetVarint (int *,int *) ;
 int fts5LeafFirstRowidOff (TYPE_4__*) ;
 int fts5SegIterReverseInitPage (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void fts5SegIterReverseNewPage(Fts5Index *p, Fts5SegIter *pIter){
  assert( pIter->flags & FTS5_SEGITER_REVERSE );
  assert( pIter->flags & FTS5_SEGITER_ONETERM );

  fts5DataRelease(pIter->pLeaf);
  pIter->pLeaf = 0;
  while( p->rc==SQLITE_OK && pIter->iLeafPgno>pIter->iTermLeafPgno ){
    Fts5Data *pNew;
    pIter->iLeafPgno--;
    pNew = fts5DataRead(p, FTS5_SEGMENT_ROWID(
          pIter->pSeg->iSegid, pIter->iLeafPgno
    ));
    if( pNew ){



      if( pIter->iLeafPgno==pIter->iTermLeafPgno ){
        assert( pIter->pLeaf==0 );
        if( pIter->iTermLeafOffset<pNew->szLeaf ){
          pIter->pLeaf = pNew;
          pIter->iLeafOffset = pIter->iTermLeafOffset;
        }
      }else{
        int iRowidOff;
        iRowidOff = fts5LeafFirstRowidOff(pNew);
        if( iRowidOff ){
          pIter->pLeaf = pNew;
          pIter->iLeafOffset = iRowidOff;
        }
      }

      if( pIter->pLeaf ){
        u8 *a = &pIter->pLeaf->p[pIter->iLeafOffset];
        pIter->iLeafOffset += fts5GetVarint(a, (u64*)&pIter->iRowid);
        break;
      }else{
        fts5DataRelease(pNew);
      }
    }
  }

  if( pIter->pLeaf ){
    pIter->iEndofDoclist = pIter->pLeaf->nn+1;
    fts5SegIterReverseInitPage(p, pIter);
  }
}
