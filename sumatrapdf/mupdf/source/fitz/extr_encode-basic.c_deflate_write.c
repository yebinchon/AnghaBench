
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t avail_in; int avail_out; unsigned char* next_out; int * next_in; } ;
struct deflate {TYPE_1__ z; int chain; } ;
typedef int fz_context ;
typedef int Bytef ;


 int FZ_ERROR_GENERIC ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int deflate (TYPE_1__*,int ) ;
 int fz_throw (int *,int ,char*,int) ;
 int fz_write_data (int *,int ,unsigned char*,int) ;

__attribute__((used)) static void deflate_write(fz_context *ctx, void *opaque, const void *data, size_t n)
{
 struct deflate *state = opaque;
 unsigned char buffer[32 << 10];
 int err;

 state->z.next_in = (Bytef*)data;
 state->z.avail_in = n;
 do
 {
  state->z.next_out = buffer;
  state->z.avail_out = sizeof buffer;
  err = deflate(&state->z, Z_NO_FLUSH);
  if (err != Z_OK)
   fz_throw(ctx, FZ_ERROR_GENERIC, "zlib compression failed: %d", err);
  if (state->z.avail_out > 0)
   fz_write_data(ctx, state->chain, state->z.next_out, state->z.avail_out);
 } while (state->z.avail_out > 0);
}
