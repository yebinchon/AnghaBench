#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * nulls; int /*<<< orphan*/  xors; int /*<<< orphan*/ * num_bits_used_per_xor; int /*<<< orphan*/  leading_zeros; int /*<<< orphan*/ * tag1s; int /*<<< orphan*/ * tag0s; } ;
struct TYPE_7__ {int forward; int /*<<< orphan*/  try_next; int /*<<< orphan*/  element_type; int /*<<< orphan*/  compression_algorithm; } ;
struct TYPE_6__ {int has_nulls; TYPE_2__ base; TYPE_5__ gorilla_data; int /*<<< orphan*/  nulls; int /*<<< orphan*/  xors; int /*<<< orphan*/  num_bits_used; int /*<<< orphan*/  leading_zeros; int /*<<< orphan*/  tag1s; int /*<<< orphan*/  tag0s; scalar_t__ prev_xor_bits_used; scalar_t__ prev_leading_zeroes; scalar_t__ prev_val; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ GorillaDecompressionIterator ;
typedef  TYPE_2__ DecompressionIterator ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  COMPRESSION_ALGORITHM_GORILLA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gorilla_decompression_iterator_try_next_forward ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

DecompressionIterator *
FUNC4(Datum gorilla_compressed, Oid element_type)
{
	GorillaDecompressionIterator *iterator = FUNC2(sizeof(*iterator));
	iterator->base.compression_algorithm = COMPRESSION_ALGORITHM_GORILLA;
	iterator->base.forward = true;
	iterator->base.element_type = element_type;
	iterator->base.try_next = gorilla_decompression_iterator_try_next_forward;
	iterator->prev_val = 0;
	iterator->prev_leading_zeroes = 0;
	iterator->prev_xor_bits_used = 0;
	FUNC1(&iterator->gorilla_data, gorilla_compressed);

	FUNC3(&iterator->tag0s, iterator->gorilla_data.tag0s);
	FUNC3(&iterator->tag1s, iterator->gorilla_data.tag1s);
	FUNC0(&iterator->leading_zeros, &iterator->gorilla_data.leading_zeros);
	FUNC3(&iterator->num_bits_used,
													iterator->gorilla_data.num_bits_used_per_xor);
	FUNC0(&iterator->xors, &iterator->gorilla_data.xors);

	iterator->has_nulls = iterator->gorilla_data.nulls != NULL;
	if (iterator->has_nulls)
		FUNC3(&iterator->nulls,
														iterator->gorilla_data.nulls);

	return &iterator->base;
}