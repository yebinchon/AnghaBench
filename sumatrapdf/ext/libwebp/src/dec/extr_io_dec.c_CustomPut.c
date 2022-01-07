
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* emit ) (TYPE_2__ const*,TYPE_1__* const) ;int last_y; int (* emit_alpha ) (TYPE_2__ const*,TYPE_1__* const,int) ;} ;
typedef TYPE_1__ WebPDecParams ;
struct TYPE_9__ {int mb_w; int mb_h; int mb_y; scalar_t__ opaque; } ;
typedef TYPE_2__ VP8Io ;


 int assert (int) ;
 int stub1 (TYPE_2__ const*,TYPE_1__* const) ;
 int stub2 (TYPE_2__ const*,TYPE_1__* const,int) ;

__attribute__((used)) static int CustomPut(const VP8Io* io) {
  WebPDecParams* const p = (WebPDecParams*)io->opaque;
  const int mb_w = io->mb_w;
  const int mb_h = io->mb_h;
  int num_lines_out;
  assert(!(io->mb_y & 1));

  if (mb_w <= 0 || mb_h <= 0) {
    return 0;
  }
  num_lines_out = p->emit(io, p);
  if (p->emit_alpha != ((void*)0)) {
    p->emit_alpha(io, p, num_lines_out);
  }
  p->last_y += num_lines_out;
  return 1;
}
