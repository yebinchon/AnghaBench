#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  WebPEncodingError ;
struct TYPE_17__ {TYPE_3__* cur_pos; } ;
typedef  TYPE_1__ VP8LRefsCursor ;
struct TYPE_18__ {scalar_t__ error_; } ;
typedef  TYPE_2__ VP8LBitWriter ;
typedef  int /*<<< orphan*/  VP8LBackwardRefs ;
struct TYPE_19__ {int const len; } ;
typedef  TYPE_3__ PixOrCopy ;
typedef  int /*<<< orphan*/  HuffmanTreeCode ;

/* Variables and functions */
 int NUM_LENGTH_CODES ; 
 int FUNC0 (TYPE_3__ const* const) ; 
 int FUNC1 (TYPE_3__ const* const) ; 
 scalar_t__ FUNC2 (TYPE_3__ const* const) ; 
 scalar_t__ FUNC3 (TYPE_3__ const* const) ; 
 scalar_t__ FUNC4 (TYPE_3__ const* const) ; 
 int FUNC5 (TYPE_3__ const* const,int const) ; 
 int /*<<< orphan*/  FUNC6 (int const,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__* const,int,int) ; 
 TYPE_1__ FUNC8 (int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  VP8_ENC_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VP8_ENC_OK ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__* const,int /*<<< orphan*/  const*,int const) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__* const,int /*<<< orphan*/  const*,int,int,int) ; 

__attribute__((used)) static WebPEncodingError FUNC14(
    VP8LBitWriter* const bw, int width, int histo_bits,
    const VP8LBackwardRefs* const refs,
    const uint16_t* histogram_symbols,
    const HuffmanTreeCode* const huffman_codes) {
  const int histo_xsize = histo_bits ? FUNC11(width, histo_bits) : 1;
  const int tile_mask = (histo_bits == 0) ? 0 : -(1 << histo_bits);
  // x and y trace the position in the image.
  int x = 0;
  int y = 0;
  int tile_x = x & tile_mask;
  int tile_y = y & tile_mask;
  int histogram_ix = histogram_symbols[0];
  const HuffmanTreeCode* codes = huffman_codes + 5 * histogram_ix;
  VP8LRefsCursor c = FUNC8(refs);
  while (FUNC10(&c)) {
    const PixOrCopy* const v = c.cur_pos;
    if ((tile_x != (x & tile_mask)) || (tile_y != (y & tile_mask))) {
      tile_x = x & tile_mask;
      tile_y = y & tile_mask;
      histogram_ix = histogram_symbols[(y >> histo_bits) * histo_xsize +
                                       (x >> histo_bits)];
      codes = huffman_codes + 5 * histogram_ix;
    }
    if (FUNC3(v)) {
      static const uint8_t order[] = { 1, 2, 0, 3 };
      int k;
      for (k = 0; k < 4; ++k) {
        const int code = FUNC5(v, order[k]);
        FUNC12(bw, codes + k, code);
      }
    } else if (FUNC2(v)) {
      const int code = FUNC0(v);
      const int literal_ix = 256 + NUM_LENGTH_CODES + code;
      FUNC12(bw, codes, literal_ix);
    } else {
      int bits, n_bits;
      int code;

      const int distance = FUNC1(v);
      FUNC6(v->len, &code, &n_bits, &bits);
      FUNC13(bw, codes, 256 + code, bits, n_bits);

      // Don't write the distance with the extra bits code since
      // the distance can be up to 18 bits of extra bits, and the prefix
      // 15 bits, totaling to 33, and our PutBits only supports up to 32 bits.
      FUNC6(distance, &code, &n_bits, &bits);
      FUNC12(bw, codes + 4, code);
      FUNC7(bw, bits, n_bits);
    }
    x += FUNC4(v);
    while (x >= width) {
      x -= width;
      ++y;
    }
    FUNC9(&c);
  }
  return bw->error_ ? VP8_ENC_ERROR_OUT_OF_MEMORY : VP8_ENC_OK;
}