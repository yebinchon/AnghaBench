
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_6__ {scalar_t__ pVtab; } ;
struct TYPE_8__ {TYPE_1__ base; } ;
struct TYPE_7__ {scalar_t__ pSegments; } ;
typedef TYPE_2__ Fts3Table ;
typedef TYPE_3__ Fts3Cursor ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts3ClearCursor (TYPE_3__*) ;
 int sqlite3_free (TYPE_3__*) ;

__attribute__((used)) static int fts3CloseMethod(sqlite3_vtab_cursor *pCursor){
  Fts3Cursor *pCsr = (Fts3Cursor *)pCursor;
  assert( ((Fts3Table *)pCsr->base.pVtab)->pSegments==0 );
  fts3ClearCursor(pCsr);
  assert( ((Fts3Table *)pCsr->base.pVtab)->pSegments==0 );
  sqlite3_free(pCsr);
  return SQLITE_OK;
}
