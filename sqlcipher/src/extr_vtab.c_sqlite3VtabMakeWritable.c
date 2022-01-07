
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Table ;
struct TYPE_5__ {int nVtabLock; int db; int ** apVtabLock; } ;
typedef TYPE_1__ Parse ;


 int IsVirtual (int *) ;
 int assert (int ) ;
 int sqlite3OomFault (int ) ;
 TYPE_1__* sqlite3ParseToplevel (TYPE_1__*) ;
 int ** sqlite3_realloc64 (int **,int) ;

void sqlite3VtabMakeWritable(Parse *pParse, Table *pTab){
  Parse *pToplevel = sqlite3ParseToplevel(pParse);
  int i, n;
  Table **apVtabLock;

  assert( IsVirtual(pTab) );
  for(i=0; i<pToplevel->nVtabLock; i++){
    if( pTab==pToplevel->apVtabLock[i] ) return;
  }
  n = (pToplevel->nVtabLock+1)*sizeof(pToplevel->apVtabLock[0]);
  apVtabLock = sqlite3_realloc64(pToplevel->apVtabLock, n);
  if( apVtabLock ){
    pToplevel->apVtabLock = apVtabLock;
    pToplevel->apVtabLock[pToplevel->nVtabLock++] = pTab;
  }else{
    sqlite3OomFault(pToplevel->db);
  }
}
