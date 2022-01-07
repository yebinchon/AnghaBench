
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {scalar_t__ nCursor; } ;
typedef TYPE_1__ closure_vtab ;


 int SQLITE_OK ;
 int assert (int) ;
 int closureFree (TYPE_1__*) ;

__attribute__((used)) static int closureDisconnect(sqlite3_vtab *pVtab){
  closure_vtab *p = (closure_vtab*)pVtab;
  assert( p->nCursor==0 );
  closureFree(p);
  return SQLITE_OK;
}
