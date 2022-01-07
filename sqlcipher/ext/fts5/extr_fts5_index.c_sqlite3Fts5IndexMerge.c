
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {TYPE_1__* pConfig; } ;
struct TYPE_18__ {scalar_t__ nLevel; } ;
struct TYPE_17__ {int nUsermerge; } ;
typedef TYPE_2__ Fts5Structure ;
typedef TYPE_3__ Fts5Index ;


 scalar_t__ fts5IndexMerge (TYPE_3__*,TYPE_2__**,int,int) ;
 TYPE_2__* fts5IndexOptimizeStruct (TYPE_3__*,TYPE_2__*) ;
 int fts5IndexReturn (TYPE_3__*) ;
 int fts5StructureInvalidate (TYPE_3__*) ;
 TYPE_2__* fts5StructureRead (TYPE_3__*) ;
 int fts5StructureRelease (TYPE_2__*) ;
 int fts5StructureWrite (TYPE_3__*,TYPE_2__*) ;

int sqlite3Fts5IndexMerge(Fts5Index *p, int nMerge){
  Fts5Structure *pStruct = fts5StructureRead(p);
  if( pStruct ){
    int nMin = p->pConfig->nUsermerge;
    fts5StructureInvalidate(p);
    if( nMerge<0 ){
      Fts5Structure *pNew = fts5IndexOptimizeStruct(p, pStruct);
      fts5StructureRelease(pStruct);
      pStruct = pNew;
      nMin = 2;
      nMerge = nMerge*-1;
    }
    if( pStruct && pStruct->nLevel ){
      if( fts5IndexMerge(p, &pStruct, nMerge, nMin) ){
        fts5StructureWrite(p, pStruct);
      }
    }
    fts5StructureRelease(pStruct);
  }
  return fts5IndexReturn(p);
}
