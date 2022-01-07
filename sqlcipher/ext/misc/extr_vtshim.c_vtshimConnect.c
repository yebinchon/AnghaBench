
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* pNext; struct TYPE_8__** ppPrev; TYPE_3__* pAux; int pChild; } ;
typedef TYPE_2__ vtshim_vtab ;
struct TYPE_9__ {TYPE_2__* pAllVtab; int pChildAux; TYPE_1__* pMod; int zName; scalar_t__ bDisposed; int * db; } ;
typedef TYPE_3__ vtshim_aux ;
typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_7__ {int (* xConnect ) (int *,int ,int,char const* const*,int *,char**) ;} ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int assert (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3_free (TYPE_2__*) ;
 TYPE_2__* sqlite3_malloc (int) ;
 char* sqlite3_mprintf (char*,int ) ;
 int stub1 (int *,int ,int,char const* const*,int *,char**) ;

__attribute__((used)) static int vtshimConnect(
  sqlite3 *db,
  void *ppAux,
  int argc,
  const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  vtshim_aux *pAux = (vtshim_aux*)ppAux;
  vtshim_vtab *pNew;
  int rc;

  assert( db==pAux->db );
  if( pAux->bDisposed ){
    if( pzErr ){
      *pzErr = sqlite3_mprintf("virtual table was disposed: \"%s\"",
                               pAux->zName);
    }
    return SQLITE_ERROR;
  }
  pNew = sqlite3_malloc( sizeof(*pNew) );
  *ppVtab = (sqlite3_vtab*)pNew;
  if( pNew==0 ) return SQLITE_NOMEM;
  memset(pNew, 0, sizeof(*pNew));
  rc = pAux->pMod->xConnect(db, pAux->pChildAux, argc, argv,
                            &pNew->pChild, pzErr);
  if( rc ){
    sqlite3_free(pNew);
    *ppVtab = 0;
    return rc;
  }
  pNew->pAux = pAux;
  pNew->ppPrev = &pAux->pAllVtab;
  pNew->pNext = pAux->pAllVtab;
  if( pAux->pAllVtab ) pAux->pAllVtab->ppPrev = &pNew->pNext;
  pAux->pAllVtab = pNew;
  return rc;
}
