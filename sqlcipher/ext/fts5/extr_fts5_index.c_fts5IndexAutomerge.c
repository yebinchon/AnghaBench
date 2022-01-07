
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_10__ {scalar_t__ rc; int nWorkUnit; TYPE_1__* pConfig; } ;
struct TYPE_9__ {int nWriteCounter; int nLevel; } ;
struct TYPE_8__ {scalar_t__ nAutomerge; } ;
typedef TYPE_2__ Fts5Structure ;
typedef TYPE_3__ Fts5Index ;


 scalar_t__ SQLITE_OK ;
 int fts5IndexMerge (TYPE_3__*,TYPE_2__**,int,scalar_t__) ;

__attribute__((used)) static void fts5IndexAutomerge(
  Fts5Index *p,
  Fts5Structure **ppStruct,
  int nLeaf
){
  if( p->rc==SQLITE_OK && p->pConfig->nAutomerge>0 ){
    Fts5Structure *pStruct = *ppStruct;
    u64 nWrite;
    int nWork;
    int nRem;


    nWrite = pStruct->nWriteCounter;
    nWork = (int)(((nWrite + nLeaf) / p->nWorkUnit) - (nWrite / p->nWorkUnit));
    pStruct->nWriteCounter += nLeaf;
    nRem = (int)(p->nWorkUnit * nWork * pStruct->nLevel);

    fts5IndexMerge(p, ppStruct, nRem, p->pConfig->nAutomerge);
  }
}
