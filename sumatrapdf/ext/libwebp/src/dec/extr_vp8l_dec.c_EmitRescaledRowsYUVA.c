
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int last_out_row_; TYPE_2__* rescaler; } ;
typedef TYPE_1__ VP8LDecoder ;
struct TYPE_7__ {int src_width; } ;


 scalar_t__ ExportYUVA (TYPE_1__ const* const,int) ;
 int WebPMultARGBRows (int *,int,int ,int const,int ) ;
 int WebPRescaleNeededLines (TYPE_2__*,int const) ;
 int WebPRescalerImport (TYPE_2__*,int const,int *,int) ;
 int assert (int) ;

__attribute__((used)) static int EmitRescaledRowsYUVA(const VP8LDecoder* const dec,
                                uint8_t* in, int in_stride, int mb_h) {
  int num_lines_in = 0;
  int y_pos = dec->last_out_row_;
  while (num_lines_in < mb_h) {
    const int lines_left = mb_h - num_lines_in;
    const int needed_lines = WebPRescaleNeededLines(dec->rescaler, lines_left);
    int lines_imported;
    WebPMultARGBRows(in, in_stride, dec->rescaler->src_width, needed_lines, 0);
    lines_imported =
        WebPRescalerImport(dec->rescaler, lines_left, in, in_stride);
    assert(lines_imported == needed_lines);
    num_lines_in += lines_imported;
    in += needed_lines * in_stride;
    y_pos += ExportYUVA(dec, y_pos);
  }
  return y_pos;
}
