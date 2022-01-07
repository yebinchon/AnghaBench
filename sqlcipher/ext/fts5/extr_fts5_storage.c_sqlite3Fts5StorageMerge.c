
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pIndex; } ;
typedef TYPE_1__ Fts5Storage ;


 int sqlite3Fts5IndexMerge (int ,int) ;

int sqlite3Fts5StorageMerge(Fts5Storage *p, int nMerge){
  return sqlite3Fts5IndexMerge(p->pIndex, nMerge);
}
