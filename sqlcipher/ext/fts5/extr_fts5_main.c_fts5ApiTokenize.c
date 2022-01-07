
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pVtab; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct TYPE_5__ {int pConfig; } ;
typedef TYPE_2__ Fts5Table ;
typedef TYPE_3__ Fts5Cursor ;
typedef int Fts5Context ;


 int FTS5_TOKENIZE_AUX ;
 int sqlite3Fts5Tokenize (int ,int ,char const*,int,void*,int (*) (void*,int,char const*,int,int,int)) ;

__attribute__((used)) static int fts5ApiTokenize(
  Fts5Context *pCtx,
  const char *pText, int nText,
  void *pUserData,
  int (*xToken)(void*, int, const char*, int, int, int)
){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCtx;
  Fts5Table *pTab = (Fts5Table*)(pCsr->base.pVtab);
  return sqlite3Fts5Tokenize(
      pTab->pConfig, FTS5_TOKENIZE_AUX, pText, nText, pUserData, xToken
  );
}
