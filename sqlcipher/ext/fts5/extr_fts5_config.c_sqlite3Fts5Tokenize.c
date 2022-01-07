
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pTok; TYPE_1__* pTokApi; } ;
struct TYPE_4__ {int (* xTokenize ) (int ,void*,int,char const*,int,int (*) (void*,int,char const*,int,int,int)) ;} ;
typedef TYPE_2__ Fts5Config ;


 int SQLITE_OK ;
 int stub1 (int ,void*,int,char const*,int,int (*) (void*,int,char const*,int,int,int)) ;

int sqlite3Fts5Tokenize(
  Fts5Config *pConfig,
  int flags,
  const char *pText, int nText,
  void *pCtx,
  int (*xToken)(void*, int, const char*, int, int, int)
){
  if( pText==0 ) return SQLITE_OK;
  return pConfig->pTokApi->xTokenize(
      pConfig->pTok, pCtx, flags, pText, nText, xToken
  );
}
