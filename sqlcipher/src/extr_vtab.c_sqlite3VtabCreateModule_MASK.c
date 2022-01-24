#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_module ;
struct TYPE_8__ {int /*<<< orphan*/  aModule; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_9__ {char* zName; void (* xDestroy ) (void*) ;scalar_t__ pEpoTab; void* pAux; int /*<<< orphan*/  const* pModule; } ;
typedef  TYPE_2__ Module ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,void*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (char const*) ; 

Module *FUNC7(
  sqlite3 *db,                    /* Database in which module is registered */
  const char *zName,              /* Name assigned to this module */
  const sqlite3_module *pModule,  /* The definition of the module */
  void *pAux,                     /* Context pointer for xCreate/xConnect */
  void (*xDestroy)(void *)        /* Module destructor function */
){
  Module *pMod;
  int nName = FUNC6(zName);
  pMod = (Module *)FUNC4(sizeof(Module) + nName + 1);
  if( pMod==0 ){
    FUNC5(db);
  }else{
    Module *pDel;
    char *zCopy = (char *)(&pMod[1]);
    FUNC1(zCopy, zName, nName+1);
    pMod->zName = zCopy;
    pMod->pModule = pModule;
    pMod->pAux = pAux;
    pMod->xDestroy = xDestroy;
    pMod->pEpoTab = 0;
    pDel = (Module *)FUNC3(&db->aModule,zCopy,(void*)pMod);
    FUNC0( pDel==0 || pDel==pMod );
    if( pDel ){
      FUNC5(db);
      FUNC2(db, pDel);
      pMod = 0;
    }
  }
  return pMod;
}