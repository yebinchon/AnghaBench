
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_6__ {int nSrc; scalar_t__ db; struct TYPE_6__* aSrc; struct TYPE_6__* zSourceStr; int pOpenClose; int pNotFound; struct TYPE_6__* zContext; struct TYPE_6__* zFile; struct TYPE_6__* zTab; struct TYPE_6__* zDb; } ;
typedef TYPE_1__ UnionTab ;
typedef TYPE_1__ UnionSrc ;


 int SQLITE_OK ;
 int sqlite3_close (scalar_t__) ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_1__*) ;
 int unionInvokeOpenClose (TYPE_1__*,TYPE_1__*,int,int ) ;

__attribute__((used)) static int unionDisconnect(sqlite3_vtab *pVtab){
  if( pVtab ){
    UnionTab *pTab = (UnionTab*)pVtab;
    int i;
    for(i=0; i<pTab->nSrc; i++){
      UnionSrc *pSrc = &pTab->aSrc[i];
      int bHaveSrcDb = (pSrc->db!=0);
      sqlite3_close(pSrc->db);
      if( bHaveSrcDb ){
        unionInvokeOpenClose(pTab, pSrc, 1, 0);
      }
      sqlite3_free(pSrc->zDb);
      sqlite3_free(pSrc->zTab);
      sqlite3_free(pSrc->zFile);
      sqlite3_free(pSrc->zContext);
    }
    sqlite3_finalize(pTab->pNotFound);
    sqlite3_finalize(pTab->pOpenClose);
    sqlite3_free(pTab->zSourceStr);
    sqlite3_free(pTab->aSrc);
    sqlite3_free(pTab);
  }
  return SQLITE_OK;
}
