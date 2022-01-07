
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int num_symbols; int code_lengths; } ;
typedef TYPE_1__ HuffmanTreeCode ;
typedef int HuffmanTree ;


 int ConvertBitDepthsToSymbols (TYPE_1__* const) ;
 int GenerateOptimalTree (int * const,int const,int * const,int,int ) ;
 int OptimizeHuffmanForRle (int const,int * const,int * const) ;
 int memset (int * const,int ,int const) ;

void VP8LCreateHuffmanTree(uint32_t* const histogram, int tree_depth_limit,
                           uint8_t* const buf_rle,
                           HuffmanTree* const huff_tree,
                           HuffmanTreeCode* const huff_code) {
  const int num_symbols = huff_code->num_symbols;
  memset(buf_rle, 0, num_symbols * sizeof(*buf_rle));
  OptimizeHuffmanForRle(num_symbols, buf_rle, histogram);
  GenerateOptimalTree(histogram, num_symbols, huff_tree, tree_depth_limit,
                      huff_code->code_lengths);

  ConvertBitDepthsToSymbols(huff_code);
}
