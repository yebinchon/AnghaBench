#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* pNext; struct TYPE_8__** ppPrev; TYPE_3__* pAux; int /*<<< orphan*/  pChild; } ;
typedef  TYPE_2__ vtshim_vtab ;
struct TYPE_9__ {TYPE_2__* pAllVtab; int /*<<< orphan*/  pChildAux; TYPE_1__* pMod; int /*<<< orphan*/  zName; scalar_t__ bDisposed; int /*<<< orphan*/ * db; } ;
typedef  TYPE_3__ vtshim_aux ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {int (* xConnect ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const* const*,int /*<<< orphan*/ *,char**) ;} ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const* const*,int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static int FUNC6(
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

  FUNC0( db==pAux->db );
  if( pAux->bDisposed ){
    if( pzErr ){
      *pzErr = FUNC4("virtual table was disposed: \"%s\"",
                               pAux->zName);
    }
    return SQLITE_ERROR;
  }
  pNew = FUNC3( sizeof(*pNew) );
  *ppVtab = (sqlite3_vtab*)pNew;
  if( pNew==0 ) return SQLITE_NOMEM;
  FUNC1(pNew, 0, sizeof(*pNew));
  rc = pAux->pMod->xConnect(db, pAux->pChildAux, argc, argv,
                            &pNew->pChild, pzErr);
  if( rc ){
    FUNC2(pNew);
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