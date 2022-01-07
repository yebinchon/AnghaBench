
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * a; int uv_stride; int y_stride; int v; int u; int y; scalar_t__ mb_y; } ;
typedef TYPE_1__ VP8Io ;
struct TYPE_6__ {int cache_uv_stride_; int cache_y_stride_; int cache_v_; int cache_u_; int cache_y_; } ;
typedef TYPE_2__ VP8Decoder ;



__attribute__((used)) static void InitIo(VP8Decoder* const dec, VP8Io* io) {

  io->mb_y = 0;
  io->y = dec->cache_y_;
  io->u = dec->cache_u_;
  io->v = dec->cache_v_;
  io->y_stride = dec->cache_y_stride_;
  io->uv_stride = dec->cache_uv_stride_;
  io->a = ((void*)0);
}
