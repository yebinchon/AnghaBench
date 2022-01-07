
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {char const* buf; int fp; } ;
typedef TYPE_1__ FileReaderCtx ;


 int UNUSED (int *) ;
 scalar_t__ feof (int ) ;
 size_t fread (char const*,int,int,int ) ;

__attribute__((used)) static const char *reader_file(lua_State *L, void *ud, size_t *size)
{
  FileReaderCtx *ctx = (FileReaderCtx *)ud;
  UNUSED(L);
  if (feof(ctx->fp)) return ((void*)0);
  *size = fread(ctx->buf, 1, sizeof(ctx->buf), ctx->fp);
  return *size > 0 ? ctx->buf : ((void*)0);
}
