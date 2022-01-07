
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int src_y; } ;
typedef TYPE_1__ WebPRescaler ;
struct TYPE_9__ {int last_y; scalar_t__ (* emit_alpha_row ) (TYPE_2__* const,int const,int) ;TYPE_1__* scaler_a; } ;
typedef TYPE_2__ WebPDecParams ;
struct TYPE_10__ {int mb_y; int mb_h; int const width; int * a; } ;
typedef TYPE_3__ VP8Io ;


 int WebPRescalerImport (TYPE_1__* const,int,int *,int const) ;
 scalar_t__ stub1 (TYPE_2__* const,int const,int) ;

__attribute__((used)) static int EmitRescaledAlphaRGB(const VP8Io* const io, WebPDecParams* const p,
                                int expected_num_out_lines) {
  if (io->a != ((void*)0)) {
    WebPRescaler* const scaler = p->scaler_a;
    int lines_left = expected_num_out_lines;
    const int y_end = p->last_y + lines_left;
    while (lines_left > 0) {
      const int row_offset = scaler->src_y - io->mb_y;
      WebPRescalerImport(scaler, io->mb_h + io->mb_y - scaler->src_y,
                         io->a + row_offset * io->width, io->width);
      lines_left -= p->emit_alpha_row(p, y_end - lines_left, lines_left);
    }
  }
  return 0;
}
