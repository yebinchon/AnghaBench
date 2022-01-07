
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ rc; TYPE_2__* pConfig; } ;
struct TYPE_13__ {int nLevel; TYPE_1__* aLevel; } ;
struct TYPE_12__ {int nCrisisMerge; } ;
struct TYPE_11__ {int const nSeg; } ;
typedef TYPE_3__ Fts5Structure ;
typedef TYPE_4__ Fts5Index ;


 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5IndexMergeLevel (TYPE_4__*,TYPE_3__**,int,int ) ;
 int fts5StructurePromote (TYPE_4__*,int,TYPE_3__*) ;

__attribute__((used)) static void fts5IndexCrisismerge(
  Fts5Index *p,
  Fts5Structure **ppStruct
){
  const int nCrisis = p->pConfig->nCrisisMerge;
  Fts5Structure *pStruct = *ppStruct;
  int iLvl = 0;

  assert( p->rc!=SQLITE_OK || pStruct->nLevel>0 );
  while( p->rc==SQLITE_OK && pStruct->aLevel[iLvl].nSeg>=nCrisis ){
    fts5IndexMergeLevel(p, &pStruct, iLvl, 0);
    assert( p->rc!=SQLITE_OK || pStruct->nLevel>(iLvl+1) );
    fts5StructurePromote(p, iLvl+1, pStruct);
    iLvl++;
  }
  *ppStruct = pStruct;
}
