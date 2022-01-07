
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int i64 ;
struct TYPE_3__ {int pGlobal; } ;
typedef int Fts5Cursor ;
typedef TYPE_1__ Fts5Auxiliary ;


 int assert (int) ;
 int fts5ApiInvoke (TYPE_1__*,int *,int *,int,int **) ;
 int * fts5CursorFromCsrid (int ,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ) ;
 int sqlite3_result_error (int *,char*,int) ;
 scalar_t__ sqlite3_user_data (int *) ;
 int sqlite3_value_int64 (int *) ;

__attribute__((used)) static void fts5ApiCallback(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){

  Fts5Auxiliary *pAux;
  Fts5Cursor *pCsr;
  i64 iCsrId;

  assert( argc>=1 );
  pAux = (Fts5Auxiliary*)sqlite3_user_data(context);
  iCsrId = sqlite3_value_int64(argv[0]);

  pCsr = fts5CursorFromCsrid(pAux->pGlobal, iCsrId);
  if( pCsr==0 ){
    char *zErr = sqlite3_mprintf("no such cursor: %lld", iCsrId);
    sqlite3_result_error(context, zErr, -1);
    sqlite3_free(zErr);
  }else{
    fts5ApiInvoke(pAux, pCsr, context, argc-1, &argv[1]);
  }
}
