
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* pFiles; } ;
typedef TYPE_1__ quotaGroup ;
struct TYPE_5__ {struct TYPE_5__* pNext; scalar_t__ nRef; } ;
typedef TYPE_2__ quotaFile ;



__attribute__((used)) static int quotaGroupOpenFileCount(quotaGroup *pGroup){
  int N = 0;
  quotaFile *pFile = pGroup->pFiles;
  while( pFile ){
    if( pFile->nRef ) N++;
    pFile = pFile->pNext;
  }
  return N;
}
