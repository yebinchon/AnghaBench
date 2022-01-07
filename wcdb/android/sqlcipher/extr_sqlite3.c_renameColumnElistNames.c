
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_4__ {char* zName; } ;
typedef int RenameCtx ;
typedef int Parse ;
typedef TYPE_2__ ExprList ;


 int renameTokenFind (int *,int *,void*) ;
 scalar_t__ sqlite3_stricmp (char*,char const*) ;

__attribute__((used)) static void renameColumnElistNames(
  Parse *pParse,
  RenameCtx *pCtx,
  ExprList *pEList,
  const char *zOld
){
  if( pEList ){
    int i;
    for(i=0; i<pEList->nExpr; i++){
      char *zName = pEList->a[i].zName;
      if( 0==sqlite3_stricmp(zName, zOld) ){
        renameTokenFind(pParse, pCtx, (void*)zName);
      }
    }
  }
}
