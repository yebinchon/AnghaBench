
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int iLvl; int iRowid; scalar_t__ nLvl; scalar_t__ nBase; scalar_t__ zBase; TYPE_2__* zPath; TYPE_2__* aLvl; } ;
typedef TYPE_1__ fsdir_cursor ;
struct TYPE_6__ {struct TYPE_6__* zDir; scalar_t__ pDir; } ;
typedef TYPE_2__ FsdirLevel ;


 int closedir (scalar_t__) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static void fsdirResetCursor(fsdir_cursor *pCur){
  int i;
  for(i=0; i<=pCur->iLvl; i++){
    FsdirLevel *pLvl = &pCur->aLvl[i];
    if( pLvl->pDir ) closedir(pLvl->pDir);
    sqlite3_free(pLvl->zDir);
  }
  sqlite3_free(pCur->zPath);
  sqlite3_free(pCur->aLvl);
  pCur->aLvl = 0;
  pCur->zPath = 0;
  pCur->zBase = 0;
  pCur->nBase = 0;
  pCur->nLvl = 0;
  pCur->iLvl = -1;
  pCur->iRowid = 1;
}
