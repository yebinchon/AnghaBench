
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zErrMsg; } ;
typedef TYPE_1__ sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_6__ {int zErrMsg; int * db; } ;
typedef TYPE_2__ Vdbe ;


 int sqlite3DbFree (int *,int ) ;
 int sqlite3DbStrDup (int *,scalar_t__) ;
 int sqlite3_free (scalar_t__) ;

void sqlite3VtabImportErrmsg(Vdbe *p, sqlite3_vtab *pVtab){
  if( pVtab->zErrMsg ){
    sqlite3 *db = p->db;
    sqlite3DbFree(db, p->zErrMsg);
    p->zErrMsg = sqlite3DbStrDup(db, pVtab->zErrMsg);
    sqlite3_free(pVtab->zErrMsg);
    pVtab->zErrMsg = 0;
  }
}
