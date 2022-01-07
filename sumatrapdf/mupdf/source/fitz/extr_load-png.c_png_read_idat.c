
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int avail_in; unsigned int msg; scalar_t__ avail_out; int * next_in; } ;
typedef TYPE_1__ z_stream ;
struct info {int dummy; } ;
typedef int fz_context ;
typedef int Bytef ;


 int FZ_ERROR_GENERIC ;
 int Z_OK ;
 int Z_STREAM_END ;
 int Z_SYNC_FLUSH ;
 int fz_throw (int *,int ,char*,...) ;
 int inflate (TYPE_1__*,int ) ;

__attribute__((used)) static void
png_read_idat(fz_context *ctx, struct info *info, const unsigned char *p, unsigned int size, z_stream *stm)
{
 int code;

 stm->next_in = (Bytef*)p;
 stm->avail_in = size;

 code = inflate(stm, Z_SYNC_FLUSH);
 if (code != Z_OK && code != Z_STREAM_END)
  fz_throw(ctx, FZ_ERROR_GENERIC, "zlib error: %s", stm->msg);
 if (stm->avail_in != 0)
 {
  if (stm->avail_out == 0)
   fz_throw(ctx, FZ_ERROR_GENERIC, "ran out of output before input");
  fz_throw(ctx, FZ_ERROR_GENERIC, "inflate did not consume buffer (%d remaining)", stm->avail_in);
 }
}
