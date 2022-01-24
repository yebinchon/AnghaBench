#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * nulls; int /*<<< orphan*/  xors; int /*<<< orphan*/ * num_bits_used_per_xor; int /*<<< orphan*/  leading_zeros; int /*<<< orphan*/ * tag1s; int /*<<< orphan*/ * tag0s; TYPE_2__* header; } ;
struct TYPE_7__ {int has_nulls; int /*<<< orphan*/  last_value; int /*<<< orphan*/  compression_algorithm; } ;
struct TYPE_6__ {scalar_t__ has_nulls; int /*<<< orphan*/  nulls; int /*<<< orphan*/  xors; int /*<<< orphan*/  bits_used_per_xor; int /*<<< orphan*/  leading_zeros; int /*<<< orphan*/  tag1s; int /*<<< orphan*/  tag0s; int /*<<< orphan*/  prev_val; } ;
typedef  TYPE_1__ GorillaCompressor ;
typedef  TYPE_2__ GorillaCompressed ;
typedef  TYPE_3__ CompressedGorillaData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COMPRESSION_ALGORITHM_GORILLA ; 
 void* FUNC1 (TYPE_3__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 

void *
FUNC3(GorillaCompressor *compressor)
{
	GorillaCompressed header = {
		.compression_algorithm = COMPRESSION_ALGORITHM_GORILLA,
		.has_nulls = compressor->has_nulls ? 1 : 0,
		.last_value = compressor->prev_val,
	};
	CompressedGorillaData data = { .header = &header };
	data.tag0s = FUNC2(&compressor->tag0s);
	if (data.tag0s == NULL)
		return NULL;

	data.tag1s = FUNC2(&compressor->tag1s);
	FUNC0(data.tag1s != NULL);
	data.leading_zeros = compressor->leading_zeros;
	/* if all elements in the compressed are the same, there will be no xors,
	 * and thus bits_used_per_xor will be empty. Since we need to store the header
	 * to get the sizing right, we force at least one bits_used_per_xor to be created
	 * in append, above
	 */
	data.num_bits_used_per_xor = FUNC2(&compressor->bits_used_per_xor);
	FUNC0(data.num_bits_used_per_xor != NULL);
	data.xors = compressor->xors;
	data.nulls = FUNC2(&compressor->nulls);
	FUNC0(compressor->has_nulls || data.nulls != NULL);

	return FUNC1(&data);
}