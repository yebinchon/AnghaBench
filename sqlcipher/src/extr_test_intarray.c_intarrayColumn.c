
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pVtab; } ;
typedef TYPE_2__ sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_8__ {TYPE_1__* pContent; } ;
typedef TYPE_3__ intarray_vtab ;
struct TYPE_9__ {size_t i; } ;
typedef TYPE_4__ intarray_cursor ;
struct TYPE_6__ {size_t n; int * a; } ;


 int SQLITE_OK ;
 int sqlite3_result_int64 (int *,int ) ;

__attribute__((used)) static int intarrayColumn(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  intarray_cursor *pCur = (intarray_cursor*)cur;
  intarray_vtab *pVtab = (intarray_vtab*)cur->pVtab;
  if( pCur->i>=0 && pCur->i<pVtab->pContent->n ){
    sqlite3_result_int64(ctx, pVtab->pContent->a[pCur->i]);
  }
  return SQLITE_OK;
}
