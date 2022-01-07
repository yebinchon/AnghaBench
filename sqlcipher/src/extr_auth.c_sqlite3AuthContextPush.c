
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char const* zAuthContext; TYPE_1__* pParse; } ;
struct TYPE_6__ {char const* zAuthContext; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ AuthContext ;


 int assert (TYPE_1__*) ;

void sqlite3AuthContextPush(
  Parse *pParse,
  AuthContext *pContext,
  const char *zContext
){
  assert( pParse );
  pContext->pParse = pParse;
  pContext->zAuthContext = pParse->zAuthContext;
  pParse->zAuthContext = zContext;
}
