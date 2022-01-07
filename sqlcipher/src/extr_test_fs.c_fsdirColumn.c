
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_4__ {TYPE_1__* pEntry; int zDir; } ;
struct TYPE_3__ {int d_name; } ;
typedef TYPE_2__ FsdirCsr ;


 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int SQLITE_TRANSIENT ;
 int assert (int ) ;
 int sqlite3_result_text (int *,int ,int,int ) ;

__attribute__((used)) static int fsdirColumn(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  FsdirCsr *pCsr = (FsdirCsr*)cur;
  switch( i ){
    case 0:
      sqlite3_result_text(ctx, pCsr->zDir, -1, SQLITE_STATIC);
      break;

    case 1:
      sqlite3_result_text(ctx, pCsr->pEntry->d_name, -1, SQLITE_TRANSIENT);
      break;

    default:
      assert( 0 );
  }

  return SQLITE_OK;
}
