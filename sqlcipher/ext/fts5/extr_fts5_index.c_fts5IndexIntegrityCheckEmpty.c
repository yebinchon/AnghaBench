
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ rc; } ;
struct TYPE_6__ {int iSegid; } ;
typedef TYPE_1__ Fts5StructureSegment ;
typedef TYPE_2__ Fts5Index ;
typedef int Fts5Data ;


 void* FTS5_CORRUPT ;
 int FTS5_SEGMENT_ROWID (int ,int) ;
 scalar_t__ SQLITE_OK ;
 int * fts5DataRead (TYPE_2__*,int ) ;
 int fts5DataRelease (int *) ;
 scalar_t__ fts5LeafFirstRowidOff (int *) ;
 int fts5LeafIsTermless (int *) ;

__attribute__((used)) static void fts5IndexIntegrityCheckEmpty(
  Fts5Index *p,
  Fts5StructureSegment *pSeg,
  int iFirst,
  int iNoRowid,
  int iLast
){
  int i;



  for(i=iFirst; p->rc==SQLITE_OK && i<=iLast; i++){
    Fts5Data *pLeaf = fts5DataRead(p, FTS5_SEGMENT_ROWID(pSeg->iSegid, i));
    if( pLeaf ){
      if( !fts5LeafIsTermless(pLeaf) ) p->rc = FTS5_CORRUPT;
      if( i>=iNoRowid && 0!=fts5LeafFirstRowidOff(pLeaf) ) p->rc = FTS5_CORRUPT;
    }
    fts5DataRelease(pLeaf);
  }
}
