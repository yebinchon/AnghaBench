
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int zFunc; struct TYPE_8__* pNext; } ;
struct TYPE_7__ {TYPE_1__* pGlobal; } ;
struct TYPE_6__ {TYPE_3__* pAux; } ;
typedef TYPE_2__ Fts5FullTable ;
typedef TYPE_3__ Fts5Auxiliary ;


 scalar_t__ sqlite3_stricmp (char const*,int ) ;

__attribute__((used)) static Fts5Auxiliary *fts5FindAuxiliary(Fts5FullTable *pTab, const char *zName){
  Fts5Auxiliary *pAux;

  for(pAux=pTab->pGlobal->pAux; pAux; pAux=pAux->pNext){
    if( sqlite3_stricmp(zName, pAux->zFunc)==0 ) return pAux;
  }


  return 0;
}
