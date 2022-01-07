
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pNext; } ;
typedef TYPE_1__ ZipfileEntry ;
struct TYPE_6__ {TYPE_1__* pFreeEntry; TYPE_1__* pCurrent; scalar_t__ pFile; scalar_t__ bEof; } ;
typedef TYPE_2__ ZipfileCsr ;


 int fclose (scalar_t__) ;
 int zipfileEntryFree (TYPE_1__*) ;

__attribute__((used)) static void zipfileResetCursor(ZipfileCsr *pCsr){
  ZipfileEntry *p;
  ZipfileEntry *pNext;

  pCsr->bEof = 0;
  if( pCsr->pFile ){
    fclose(pCsr->pFile);
    pCsr->pFile = 0;
    zipfileEntryFree(pCsr->pCurrent);
    pCsr->pCurrent = 0;
  }

  for(p=pCsr->pFreeEntry; p; p=pNext){
    pNext = p->pNext;
    zipfileEntryFree(p);
  }
}
