
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int WebPEncodingError ;
struct TYPE_11__ {int size; int * histograms; } ;
typedef TYPE_1__ VP8LHistogramSet ;
typedef int VP8LHashChain ;
typedef int VP8LBitWriter ;
typedef int VP8LBackwardRefs ;
struct TYPE_12__ {int num_symbols; int * const codes; int * member_2; int * member_1; int member_0; } ;
typedef int HuffmanTreeToken ;
typedef TYPE_2__ HuffmanTreeCode ;
typedef int HuffmanTree ;


 unsigned long long CODE_LENGTH_CODES ;
 int ClearHuffmanTreeIfOnlyOneSymbol (TYPE_2__* const) ;
 int GetHuffBitLengthsAndCodes (TYPE_1__*,TYPE_2__*) ;
 int StoreHuffmanCode (int * const,int * const,int *,TYPE_2__* const) ;
 int StoreImageToBitMask (int * const,int,int ,int *,int const*,TYPE_2__*) ;
 TYPE_1__* VP8LAllocateHistogramSet (int,int) ;
 int VP8LFreeHistogramSet (TYPE_1__*) ;
 int * VP8LGetBackwardReferences (int,int,int const* const,int,int ,int,int*,int * const,int * const,int * const) ;
 int VP8LHashChainFill (int * const,int,int const* const,int,int,int) ;
 int VP8LHistogramSetClear (TYPE_1__*) ;
 int VP8LHistogramStoreRefs (int *,int ) ;
 int VP8LPutBits (int * const,int ,int) ;
 int VP8_ENC_ERROR_OUT_OF_MEMORY ;
 int VP8_ENC_OK ;
 int WebPSafeFree (int * const) ;
 scalar_t__ WebPSafeMalloc (int,int) ;
 int assert (int) ;
 int kLZ77RLE ;
 int kLZ77Standard ;

__attribute__((used)) static WebPEncodingError EncodeImageNoHuffman(VP8LBitWriter* const bw,
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
  HuffmanTreeToken* tokens = ((void*)0);
  HuffmanTreeCode huffman_codes[5] = { { 0, ((void*)0), ((void*)0) } };
  const uint16_t histogram_symbols[1] = { 0 };
  int cache_bits = 0;
  VP8LHistogramSet* histogram_image = ((void*)0);
  HuffmanTree* const huff_tree = (HuffmanTree*)WebPSafeMalloc(
        3ULL * CODE_LENGTH_CODES, sizeof(*huff_tree));
  if (huff_tree == ((void*)0)) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }


  if (!VP8LHashChainFill(hash_chain, quality, argb, width, height,
                         low_effort)) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }
  refs = VP8LGetBackwardReferences(width, height, argb, quality, 0,
                                   kLZ77Standard | kLZ77RLE, &cache_bits,
                                   hash_chain, refs_tmp1, refs_tmp2);
  if (refs == ((void*)0)) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }
  histogram_image = VP8LAllocateHistogramSet(1, cache_bits);
  if (histogram_image == ((void*)0)) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }
  VP8LHistogramSetClear(histogram_image);


  VP8LHistogramStoreRefs(refs, histogram_image->histograms[0]);


  assert(histogram_image->size == 1);
  if (!GetHuffBitLengthsAndCodes(histogram_image, huffman_codes)) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }


  VP8LPutBits(bw, 0, 1);


  for (i = 0; i < 5; ++i) {
    HuffmanTreeCode* const codes = &huffman_codes[i];
    if (max_tokens < codes->num_symbols) {
      max_tokens = codes->num_symbols;
    }
  }

  tokens = (HuffmanTreeToken*)WebPSafeMalloc(max_tokens, sizeof(*tokens));
  if (tokens == ((void*)0)) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }


  for (i = 0; i < 5; ++i) {
    HuffmanTreeCode* const codes = &huffman_codes[i];
    StoreHuffmanCode(bw, huff_tree, tokens, codes);
    ClearHuffmanTreeIfOnlyOneSymbol(codes);
  }


  err = StoreImageToBitMask(bw, width, 0, refs, histogram_symbols,
                            huffman_codes);

 Error:
  WebPSafeFree(tokens);
  WebPSafeFree(huff_tree);
  VP8LFreeHistogramSet(histogram_image);
  WebPSafeFree(huffman_codes[0].codes);
  return err;
}
