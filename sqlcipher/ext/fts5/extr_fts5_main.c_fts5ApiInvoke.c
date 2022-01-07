
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_6__ {int (* xFunc ) (int *,int *,int *,int,int **) ;} ;
struct TYPE_5__ {TYPE_2__* pAux; } ;
typedef TYPE_1__ Fts5Cursor ;
typedef int Fts5Context ;
typedef TYPE_2__ Fts5Auxiliary ;


 int assert (int) ;
 int sFts5Api ;
 int stub1 (int *,int *,int *,int,int **) ;

__attribute__((used)) static void fts5ApiInvoke(
  Fts5Auxiliary *pAux,
  Fts5Cursor *pCsr,
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  assert( pCsr->pAux==0 );
  pCsr->pAux = pAux;
  pAux->xFunc(&sFts5Api, (Fts5Context*)pCsr, context, argc, argv);
  pCsr->pAux = 0;
}
