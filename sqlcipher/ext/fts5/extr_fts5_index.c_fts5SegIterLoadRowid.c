
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_10__ {int szLeaf; int * p; } ;
struct TYPE_9__ {scalar_t__ rc; } ;
struct TYPE_8__ {int iLeafOffset; int iRowid; TYPE_7__* pLeaf; } ;
typedef TYPE_1__ Fts5SegIter ;
typedef TYPE_2__ Fts5Index ;


 int ASSERT_SZLEAF_OK (TYPE_7__*) ;
 scalar_t__ FTS5_CORRUPT ;
 scalar_t__ SQLITE_OK ;
 int fts5SegIterNextPage (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ sqlite3Fts5GetVarint (int *,int *) ;

__attribute__((used)) static void fts5SegIterLoadRowid(Fts5Index *p, Fts5SegIter *pIter){
  u8 *a = pIter->pLeaf->p;
  int iOff = pIter->iLeafOffset;

  ASSERT_SZLEAF_OK(pIter->pLeaf);
  if( iOff>=pIter->pLeaf->szLeaf ){
    fts5SegIterNextPage(p, pIter);
    if( pIter->pLeaf==0 ){
      if( p->rc==SQLITE_OK ) p->rc = FTS5_CORRUPT;
      return;
    }
    iOff = 4;
    a = pIter->pLeaf->p;
  }
  iOff += sqlite3Fts5GetVarint(&a[iOff], (u64*)&pIter->iRowid);
  pIter->iLeafOffset = iOff;
}
