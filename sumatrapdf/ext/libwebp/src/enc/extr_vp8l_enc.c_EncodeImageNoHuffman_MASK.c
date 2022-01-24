#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  WebPEncodingError ;
struct TYPE_11__ {int size; int /*<<< orphan*/ * histograms; } ;
typedef  TYPE_1__ VP8LHistogramSet ;
typedef  int /*<<< orphan*/  VP8LHashChain ;
typedef  int /*<<< orphan*/  VP8LBitWriter ;
typedef  int /*<<< orphan*/  VP8LBackwardRefs ;
struct TYPE_12__ {int num_symbols; int /*<<< orphan*/ * const codes; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  HuffmanTreeToken ;
typedef  TYPE_2__ HuffmanTreeCode ;
typedef  int /*<<< orphan*/  HuffmanTree ;

/* Variables and functions */
 unsigned long long CODE_LENGTH_CODES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int /*<<< orphan*/ *,TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_2__*) ; 
 TYPE_1__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,int /*<<< orphan*/  const* const,int,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const,int,int /*<<< orphan*/  const* const,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VP8_ENC_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VP8_ENC_OK ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int kLZ77RLE ; 
 int kLZ77Standard ; 

__attribute__((used)) static WebPEncodingError FUNC14(VP8LBitWriter* const bw,
                                              const uint32_t* const argb,
                                              VP8LHashChain* const hash_chain,
                                              VP8LBackwardRefs* const refs_tmp1,
                                              VP8LBackwardRefs* const refs_tmp2,
                                              int width, int height,
                                              int quality, int low_effort) {
  int i;
  int max_tokens = 0;
  WebPEncodingError err = VP8_ENC_OK;
  VP8LBackwardRefs* refs;
  HuffmanTreeToken* tokens = NULL;
  HuffmanTreeCode huffman_codes[5] = { { 0, NULL, NULL } };
  const uint16_t histogram_symbols[1] = { 0 };    // only one tree, one symbol
  int cache_bits = 0;
  VP8LHistogramSet* histogram_image = NULL;
  HuffmanTree* const huff_tree = (HuffmanTree*)FUNC12(
        3ULL * CODE_LENGTH_CODES, sizeof(*huff_tree));
  if (huff_tree == NULL) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }

  // Calculate backward references from ARGB image.
  if (!FUNC7(hash_chain, quality, argb, width, height,
                         low_effort)) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }
  refs = FUNC6(width, height, argb, quality, 0,
                                   kLZ77Standard | kLZ77RLE, &cache_bits,
                                   hash_chain, refs_tmp1, refs_tmp2);
  if (refs == NULL) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }
  histogram_image = FUNC4(1, cache_bits);
  if (histogram_image == NULL) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }
  FUNC8(histogram_image);

  // Build histogram image and symbols from backward references.
  FUNC9(refs, histogram_image->histograms[0]);

  // Create Huffman bit lengths and codes for each histogram image.
  FUNC13(histogram_image->size == 1);
  if (!FUNC1(histogram_image, huffman_codes)) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }

  // No color cache, no Huffman image.
  FUNC10(bw, 0, 1);

  // Find maximum number of symbols for the huffman tree-set.
  for (i = 0; i < 5; ++i) {
    HuffmanTreeCode* const codes = &huffman_codes[i];
    if (max_tokens < codes->num_symbols) {
      max_tokens = codes->num_symbols;
    }
  }

  tokens = (HuffmanTreeToken*)FUNC12(max_tokens, sizeof(*tokens));
  if (tokens == NULL) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }

  // Store Huffman codes.
  for (i = 0; i < 5; ++i) {
    HuffmanTreeCode* const codes = &huffman_codes[i];
    FUNC2(bw, huff_tree, tokens, codes);
    FUNC0(codes);
  }

  // Store actual literals.
  err = FUNC3(bw, width, 0, refs, histogram_symbols,
                            huffman_codes);

 Error:
  FUNC11(tokens);
  FUNC11(huff_tree);
  FUNC5(histogram_image);
  FUNC11(huffman_codes[0].codes);
  return err;
}