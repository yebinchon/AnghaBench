
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* pAllCur; int pChild; TYPE_4__* pAux; } ;
typedef TYPE_2__ vtshim_vtab ;
struct TYPE_11__ {struct TYPE_11__* pNext; struct TYPE_11__** ppPrev; int base; TYPE_5__* pChild; } ;
typedef TYPE_3__ vtshim_cursor ;
struct TYPE_12__ {TYPE_1__* pMod; scalar_t__ bDisposed; } ;
typedef TYPE_4__ vtshim_aux ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
struct TYPE_13__ {int pVtab; } ;
struct TYPE_9__ {int (* xOpen ) (int ,TYPE_5__**) ;} ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int VTSHIM_COPY_ERRMSG () ;
 int memset (TYPE_3__*,int ,int) ;
 int sqlite3_free (TYPE_3__*) ;
 TYPE_3__* sqlite3_malloc (int) ;
 int stub1 (int ,TYPE_5__**) ;

__attribute__((used)) static int vtshimOpen(sqlite3_vtab *pBase, sqlite3_vtab_cursor **ppCursor){
  vtshim_vtab *pVtab = (vtshim_vtab*)pBase;
  vtshim_aux *pAux = pVtab->pAux;
  vtshim_cursor *pCur;
  int rc;
  *ppCursor = 0;
  if( pAux->bDisposed ) return SQLITE_ERROR;
  pCur = sqlite3_malloc( sizeof(*pCur) );
  if( pCur==0 ) return SQLITE_NOMEM;
  memset(pCur, 0, sizeof(*pCur));
  rc = pAux->pMod->xOpen(pVtab->pChild, &pCur->pChild);
  if( rc ){
    sqlite3_free(pCur);
    VTSHIM_COPY_ERRMSG();
    return rc;
  }
  pCur->pChild->pVtab = pVtab->pChild;
  *ppCursor = &pCur->base;
  pCur->ppPrev = &pVtab->pAllCur;
  if( pVtab->pAllCur ) pVtab->pAllCur->ppPrev = &pCur->pNext;
  pCur->pNext = pVtab->pAllCur;
  pVtab->pAllCur = pCur;
  return SQLITE_OK;
}
