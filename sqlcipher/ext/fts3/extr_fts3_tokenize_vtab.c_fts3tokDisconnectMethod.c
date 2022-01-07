
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_5__ {int pTok; TYPE_1__* pMod; } ;
struct TYPE_4__ {int (* xDestroy ) (int ) ;} ;
typedef TYPE_2__ Fts3tokTable ;


 int SQLITE_OK ;
 int sqlite3_free (TYPE_2__*) ;
 int stub1 (int ) ;

__attribute__((used)) static int fts3tokDisconnectMethod(sqlite3_vtab *pVtab){
  Fts3tokTable *pTab = (Fts3tokTable *)pVtab;

  pTab->pMod->xDestroy(pTab->pTok);
  sqlite3_free(pTab);
  return SQLITE_OK;
}
