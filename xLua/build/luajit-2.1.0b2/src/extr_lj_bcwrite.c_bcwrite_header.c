
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int wdata; int sb; int (* wfunc ) (int ,char*,scalar_t__,int ) ;int status; scalar_t__ strip; TYPE_5__* pt; } ;
struct TYPE_7__ {scalar_t__ len; } ;
typedef scalar_t__ MSize ;
typedef TYPE_1__ GCstr ;
typedef TYPE_2__ BCWriteCtx ;


 int BCDUMP_F_BE ;
 int BCDUMP_F_FFI ;
 int BCDUMP_F_FR2 ;
 int BCDUMP_F_STRIP ;
 int BCDUMP_HEAD1 ;
 int BCDUMP_HEAD2 ;
 int BCDUMP_HEAD3 ;
 int BCDUMP_VERSION ;
 int LJ_BE ;
 int LJ_FR2 ;
 int PROTO_FFI ;
 char* lj_buf_need (int *,scalar_t__) ;
 char* lj_buf_wmem (char*,char const*,scalar_t__) ;
 char* lj_strfmt_wuleb128 (char*,scalar_t__) ;
 TYPE_1__* proto_chunkname (TYPE_5__*) ;
 char* sbufB (int *) ;
 int sbufL (int *) ;
 char* strdata (TYPE_1__*) ;
 int stub1 (int ,char*,scalar_t__,int ) ;

__attribute__((used)) static void bcwrite_header(BCWriteCtx *ctx)
{
  GCstr *chunkname = proto_chunkname(ctx->pt);
  const char *name = strdata(chunkname);
  MSize len = chunkname->len;
  char *p = lj_buf_need(&ctx->sb, 5+5+len);
  *p++ = BCDUMP_HEAD1;
  *p++ = BCDUMP_HEAD2;
  *p++ = BCDUMP_HEAD3;
  *p++ = BCDUMP_VERSION;
  *p++ = (ctx->strip ? BCDUMP_F_STRIP : 0) +
  LJ_BE*BCDUMP_F_BE +
  ((ctx->pt->flags & PROTO_FFI) ? BCDUMP_F_FFI : 0) +
  LJ_FR2*BCDUMP_F_FR2;
  if (!ctx->strip) {
    p = lj_strfmt_wuleb128(p, len);
    p = lj_buf_wmem(p, name, len);
  }
  ctx->status = ctx->wfunc(sbufL(&ctx->sb), sbufB(&ctx->sb),
      (MSize)(p - sbufB(&ctx->sb)), ctx->wdata);
}
