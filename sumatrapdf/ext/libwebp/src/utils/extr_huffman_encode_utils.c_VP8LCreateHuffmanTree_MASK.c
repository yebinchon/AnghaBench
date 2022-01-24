#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int num_symbols; int /*<<< orphan*/  code_lengths; } ;
typedef  TYPE_1__ HuffmanTreeCode ;
typedef  int /*<<< orphan*/  HuffmanTree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int const,int /*<<< orphan*/ * const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int const,int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int const) ; 

void FUNC4(uint32_t* const histogram, int tree_depth_limit,
                           uint8_t* const buf_rle,
                           HuffmanTree* const huff_tree,
                           HuffmanTreeCode* const huff_code) {
  const int num_symbols = huff_code->num_symbols;
  FUNC3(buf_rle, 0, num_symbols * sizeof(*buf_rle));
  FUNC2(num_symbols, buf_rle, histogram);
  FUNC1(histogram, num_symbols, huff_tree, tree_depth_limit,
                      huff_code->code_lengths);
  // Create the actual bit codes for the bit lengths.
  FUNC0(huff_code);
}