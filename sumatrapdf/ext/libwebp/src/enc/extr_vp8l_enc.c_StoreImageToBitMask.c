
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int WebPEncodingError ;
struct TYPE_17__ {TYPE_3__* cur_pos; } ;
typedef TYPE_1__ VP8LRefsCursor ;
struct TYPE_18__ {scalar_t__ error_; } ;
typedef TYPE_2__ VP8LBitWriter ;
typedef int VP8LBackwardRefs ;
struct TYPE_19__ {int const len; } ;
typedef TYPE_3__ PixOrCopy ;
typedef int HuffmanTreeCode ;


 int NUM_LENGTH_CODES ;
 int PixOrCopyCacheIdx (TYPE_3__ const* const) ;
 int PixOrCopyDistance (TYPE_3__ const* const) ;
 scalar_t__ PixOrCopyIsCacheIdx (TYPE_3__ const* const) ;
 scalar_t__ PixOrCopyIsLiteral (TYPE_3__ const* const) ;
 scalar_t__ PixOrCopyLength (TYPE_3__ const* const) ;
 int PixOrCopyLiteral (TYPE_3__ const* const,int const) ;
 int VP8LPrefixEncode (int const,int*,int*,int*) ;
 int VP8LPutBits (TYPE_2__* const,int,int) ;
 TYPE_1__ VP8LRefsCursorInit (int const* const) ;
 int VP8LRefsCursorNext (TYPE_1__*) ;
 scalar_t__ VP8LRefsCursorOk (TYPE_1__*) ;
 int VP8LSubSampleSize (int,int) ;
 int VP8_ENC_ERROR_OUT_OF_MEMORY ;
 int VP8_ENC_OK ;
 int WriteHuffmanCode (TYPE_2__* const,int const*,int const) ;
 int WriteHuffmanCodeWithExtraBits (TYPE_2__* const,int const*,int,int,int) ;

__attribute__((used)) static WebPEncodingError StoreImageToBitMask(
    VP8LBitWriter* const bw, int width, int histo_bits,
    const VP8LBackwardRefs* const refs,
    const uint16_t* histogram_symbols,
    const HuffmanTreeCode* const huffman_codes) {
  const int histo_xsize = histo_bits ? VP8LSubSampleSize(width, histo_bits) : 1;
  const int tile_mask = (histo_bits == 0) ? 0 : -(1 << histo_bits);

  int x = 0;
  int y = 0;
  int tile_x = x & tile_mask;
  int tile_y = y & tile_mask;
  int histogram_ix = histogram_symbols[0];
  const HuffmanTreeCode* codes = huffman_codes + 5 * histogram_ix;
  VP8LRefsCursor c = VP8LRefsCursorInit(refs);
  while (VP8LRefsCursorOk(&c)) {
    const PixOrCopy* const v = c.cur_pos;
    if ((tile_x != (x & tile_mask)) || (tile_y != (y & tile_mask))) {
      tile_x = x & tile_mask;
      tile_y = y & tile_mask;
      histogram_ix = histogram_symbols[(y >> histo_bits) * histo_xsize +
                                       (x >> histo_bits)];
      codes = huffman_codes + 5 * histogram_ix;
    }
    if (PixOrCopyIsLiteral(v)) {
      static const uint8_t order[] = { 1, 2, 0, 3 };
      int k;
      for (k = 0; k < 4; ++k) {
        const int code = PixOrCopyLiteral(v, order[k]);
        WriteHuffmanCode(bw, codes + k, code);
      }
    } else if (PixOrCopyIsCacheIdx(v)) {
      const int code = PixOrCopyCacheIdx(v);
      const int literal_ix = 256 + NUM_LENGTH_CODES + code;
      WriteHuffmanCode(bw, codes, literal_ix);
    } else {
      int bits, n_bits;
      int code;

      const int distance = PixOrCopyDistance(v);
      VP8LPrefixEncode(v->len, &code, &n_bits, &bits);
      WriteHuffmanCodeWithExtraBits(bw, codes, 256 + code, bits, n_bits);




      VP8LPrefixEncode(distance, &code, &n_bits, &bits);
      WriteHuffmanCode(bw, codes + 4, code);
      VP8LPutBits(bw, bits, n_bits);
    }
    x += PixOrCopyLength(v);
    while (x >= width) {
      x -= width;
      ++y;
    }
    VP8LRefsCursorNext(&c);
  }
  return bw->error_ ? VP8_ENC_ERROR_OUT_OF_MEMORY : VP8_ENC_OK;
}
