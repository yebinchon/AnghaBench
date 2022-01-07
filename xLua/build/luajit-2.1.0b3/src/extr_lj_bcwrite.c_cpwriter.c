
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef int * lua_CFunction ;
struct TYPE_5__ {int pt; int sb; } ;
typedef int TValue ;
typedef TYPE_1__ BCWriteCtx ;


 int UNUSED (int *) ;
 int bcwrite_footer (TYPE_1__*) ;
 int bcwrite_header (TYPE_1__*) ;
 int bcwrite_proto (TYPE_1__*,int ) ;
 int lj_buf_need (int *,int) ;

__attribute__((used)) static TValue *cpwriter(lua_State *L, lua_CFunction dummy, void *ud)
{
  BCWriteCtx *ctx = (BCWriteCtx *)ud;
  UNUSED(L); UNUSED(dummy);
  lj_buf_need(&ctx->sb, 1024);
  bcwrite_header(ctx);
  bcwrite_proto(ctx, ctx->pt);
  bcwrite_footer(ctx);
  return ((void*)0);
}
