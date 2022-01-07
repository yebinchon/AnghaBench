
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {size_t size; char const* str; } ;
typedef TYPE_1__ StringReaderCtx ;


 int UNUSED (int *) ;

__attribute__((used)) static const char *reader_string(lua_State *L, void *ud, size_t *size)
{
  StringReaderCtx *ctx = (StringReaderCtx *)ud;
  UNUSED(L);
  if (ctx->size == 0) return ((void*)0);
  *size = ctx->size;
  ctx->size = 0;
  return ctx->str;
}
