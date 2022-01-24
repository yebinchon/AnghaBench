#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* header; int /*<<< orphan*/ * nulls; int /*<<< orphan*/  xors; int /*<<< orphan*/ * num_bits_used_per_xor; int /*<<< orphan*/  leading_zeros; int /*<<< orphan*/ * tag1s; int /*<<< orphan*/ * tag0s; } ;
struct TYPE_12__ {int forward; int /*<<< orphan*/  try_next; int /*<<< orphan*/  element_type; int /*<<< orphan*/  compression_algorithm; } ;
struct TYPE_11__ {int has_nulls; TYPE_4__ base; TYPE_8__ gorilla_data; int /*<<< orphan*/  prev_val; int /*<<< orphan*/  prev_xor_bits_used; int /*<<< orphan*/  num_bits_used; int /*<<< orphan*/  leading_zeros; int /*<<< orphan*/  prev_leading_zeroes; int /*<<< orphan*/  nulls; int /*<<< orphan*/  xors; int /*<<< orphan*/  tag1s; int /*<<< orphan*/  tag0s; } ;
struct TYPE_10__ {int /*<<< orphan*/  val; int /*<<< orphan*/  is_done; } ;
struct TYPE_9__ {int /*<<< orphan*/  last_value; } ;
typedef  TYPE_2__ Simple8bRleDecompressResult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ GorillaDecompressionIterator ;
typedef  TYPE_4__ DecompressionIterator ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BITS_PER_LEADING_ZEROS ; 
 int /*<<< orphan*/  COMPRESSION_ALGORITHM_GORILLA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gorilla_decompression_iterator_try_next_reverse ; 
 TYPE_3__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__ FUNC6 (int /*<<< orphan*/ *) ; 

DecompressionIterator *
FUNC7(Datum gorilla_compressed, Oid element_type)
{
	GorillaDecompressionIterator *iter = FUNC4(sizeof(*iter));
	Simple8bRleDecompressResult num_xor_bits;

	iter->base.compression_algorithm = COMPRESSION_ALGORITHM_GORILLA;
	iter->base.forward = false;
	iter->base.element_type = element_type;
	iter->base.try_next = gorilla_decompression_iterator_try_next_reverse;
	FUNC3(&iter->gorilla_data, gorilla_compressed);

	FUNC5(&iter->tag0s, iter->gorilla_data.tag0s);
	FUNC5(&iter->tag1s, iter->gorilla_data.tag1s);
	FUNC2(&iter->leading_zeros, &iter->gorilla_data.leading_zeros);
	FUNC5(&iter->num_bits_used,
													iter->gorilla_data.num_bits_used_per_xor);
	FUNC2(&iter->xors, &iter->gorilla_data.xors);

	iter->has_nulls = iter->gorilla_data.nulls != NULL;
	if (iter->has_nulls)
		FUNC5(&iter->nulls, iter->gorilla_data.nulls);

	/* we need to know how many bits are used, even if the last value didn't store them */
	iter->prev_leading_zeroes =
		FUNC1(&iter->leading_zeros, BITS_PER_LEADING_ZEROS);
	num_xor_bits = FUNC6(&iter->num_bits_used);
	FUNC0(!num_xor_bits.is_done);
	iter->prev_xor_bits_used = num_xor_bits.val;
	iter->prev_val = iter->gorilla_data.header->last_value;
	return &iter->base;
}