
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {scalar_t__ nPendingData; } ;
typedef TYPE_1__ fulltext_vtab ;


 int TRACE (char*) ;
 int assert (int) ;
 int clearPendingTerms (TYPE_1__*) ;

__attribute__((used)) static int fulltextCommit(sqlite3_vtab *pVtab){
  fulltext_vtab *v = (fulltext_vtab *) pVtab;
  TRACE(("FTS2 xCommit()\n"));


  assert( v->nPendingData<0 );
  return clearPendingTerms(v);
}
