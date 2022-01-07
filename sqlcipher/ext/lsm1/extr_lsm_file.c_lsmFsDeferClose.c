
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pLsmFile; scalar_t__ fdDb; } ;
struct TYPE_5__ {scalar_t__ pNext; scalar_t__ pFile; } ;
typedef TYPE_1__ LsmFile ;
typedef TYPE_2__ FileSystem ;


 int assert (int) ;

LsmFile *lsmFsDeferClose(FileSystem *pFS){
  LsmFile *p = pFS->pLsmFile;
  assert( p->pNext==0 );
  p->pFile = pFS->fdDb;
  pFS->fdDb = 0;
  pFS->pLsmFile = 0;
  return p;
}
