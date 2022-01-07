
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pScan; } ;
typedef TYPE_1__ Fts5Hash ;


 int fts5HashEntrySort (TYPE_1__*,char const*,int,int *) ;

int sqlite3Fts5HashScanInit(
  Fts5Hash *p,
  const char *pTerm, int nTerm
){
  return fts5HashEntrySort(p, pTerm, nTerm, &p->pScan);
}
