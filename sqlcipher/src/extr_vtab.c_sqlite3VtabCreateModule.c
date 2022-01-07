
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3_module ;
struct TYPE_8__ {int aModule; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_9__ {char* zName; void (* xDestroy ) (void*) ;scalar_t__ pEpoTab; void* pAux; int const* pModule; } ;
typedef TYPE_2__ Module ;


 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 int sqlite3DbFree (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ sqlite3HashInsert (int *,char*,void*) ;
 scalar_t__ sqlite3Malloc (int) ;
 int sqlite3OomFault (TYPE_1__*) ;
 int sqlite3Strlen30 (char const*) ;

Module *sqlite3VtabCreateModule(
  sqlite3 *db,
  const char *zName,
  const sqlite3_module *pModule,
  void *pAux,
  void (*xDestroy)(void *)
){
  Module *pMod;
  int nName = sqlite3Strlen30(zName);
  pMod = (Module *)sqlite3Malloc(sizeof(Module) + nName + 1);
  if( pMod==0 ){
    sqlite3OomFault(db);
  }else{
    Module *pDel;
    char *zCopy = (char *)(&pMod[1]);
    memcpy(zCopy, zName, nName+1);
    pMod->zName = zCopy;
    pMod->pModule = pModule;
    pMod->pAux = pAux;
    pMod->xDestroy = xDestroy;
    pMod->pEpoTab = 0;
    pDel = (Module *)sqlite3HashInsert(&db->aModule,zCopy,(void*)pMod);
    assert( pDel==0 || pDel==pMod );
    if( pDel ){
      sqlite3OomFault(db);
      sqlite3DbFree(db, pDel);
      pMod = 0;
    }
  }
  return pMod;
}
