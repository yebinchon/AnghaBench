
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {scalar_t__ nCursor; } ;
typedef TYPE_1__ amatch_vtab ;


 int SQLITE_OK ;
 int amatchFree (TYPE_1__*) ;
 int assert (int) ;

__attribute__((used)) static int amatchDisconnect(sqlite3_vtab *pVtab){
  amatch_vtab *p = (amatch_vtab*)pVtab;
  assert( p->nCursor==0 );
  amatchFree(p);
  return SQLITE_OK;
}
