
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* xToken ) (void*,int,char const*,int,int,int) ;int aBuf; void* pCtx; } ;
struct TYPE_4__ {int (* xTokenize ) (int ,void*,int,char const*,int,int ) ;} ;
struct TYPE_5__ {int pTokenizer; TYPE_1__ tokenizer; int aBuf; } ;
typedef TYPE_2__ PorterTokenizer ;
typedef TYPE_3__ PorterContext ;
typedef int Fts5Tokenizer ;


 int fts5PorterCb ;
 int stub1 (int ,void*,int,char const*,int,int ) ;

__attribute__((used)) static int fts5PorterTokenize(
  Fts5Tokenizer *pTokenizer,
  void *pCtx,
  int flags,
  const char *pText, int nText,
  int (*xToken)(void*, int, const char*, int nToken, int iStart, int iEnd)
){
  PorterTokenizer *p = (PorterTokenizer*)pTokenizer;
  PorterContext sCtx;
  sCtx.xToken = xToken;
  sCtx.pCtx = pCtx;
  sCtx.aBuf = p->aBuf;
  return p->tokenizer.xTokenize(
      p->pTokenizer, (void*)&sCtx, flags, pText, nText, fts5PorterCb
  );
}
