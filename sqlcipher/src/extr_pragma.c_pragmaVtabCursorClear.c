
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* azArg; scalar_t__ pPragma; } ;
typedef TYPE_1__ PragmaVtabCursor ;


 int ArraySize (scalar_t__*) ;
 int sqlite3_finalize (scalar_t__) ;
 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void pragmaVtabCursorClear(PragmaVtabCursor *pCsr){
  int i;
  sqlite3_finalize(pCsr->pPragma);
  pCsr->pPragma = 0;
  for(i=0; i<ArraySize(pCsr->azArg); i++){
    sqlite3_free(pCsr->azArg[i]);
    pCsr->azArg[i] = 0;
  }
}
