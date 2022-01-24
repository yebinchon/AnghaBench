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
struct TYPE_8__ {int /*<<< orphan*/  nulls; TYPE_1__* header; int /*<<< orphan*/  xors; int /*<<< orphan*/  num_bits_used_per_xor; int /*<<< orphan*/  leading_zeros; int /*<<< orphan*/  tag1s; int /*<<< orphan*/  tag0s; } ;
struct TYPE_7__ {int /*<<< orphan*/  bits_used_in_last_xor_bucket; int /*<<< orphan*/  num_xor_buckets; int /*<<< orphan*/  bits_used_in_last_leading_zeros_bucket; int /*<<< orphan*/  num_leading_zeroes_buckets; scalar_t__ has_nulls; int /*<<< orphan*/  compression_algorithm; int /*<<< orphan*/  last_value; int /*<<< orphan*/  vl_len_; } ;
struct TYPE_6__ {scalar_t__ has_nulls; int /*<<< orphan*/  last_value; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_2__ GorillaCompressed ;
typedef  TYPE_3__ CompressedGorillaData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  COMPRESSION_ALGORITHM_GORILLA ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ MaxAllocSize ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 char* FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static GorillaCompressed *
FUNC10(CompressedGorillaData *input)
{
	Size tags0s_size = FUNC9(input->tag0s);
	Size tags1s_size = FUNC9(input->tag1s);
	Size leading_zeros_size = FUNC2(&input->leading_zeros);
	Size bits_used_per_xor_size = FUNC9(input->num_bits_used_per_xor);
	Size xors_size = FUNC2(&input->xors);
	Size nulls_size = 0;

	Size compressed_size;
	char *data;
	GorillaCompressed *compressed;
	if (input->header->has_nulls)
		nulls_size = FUNC9(input->nulls);

	compressed_size = sizeof(GorillaCompressed) + tags0s_size + tags1s_size + leading_zeros_size +
					  bits_used_per_xor_size + xors_size;
	if (input->header->has_nulls)
		compressed_size += nulls_size;

	if (!FUNC0(compressed_size))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC7("compressed size exceeds the maximum allowed (%d)", (int) MaxAllocSize)));

	data = FUNC8(compressed_size);
	compressed = (GorillaCompressed *) data;
	FUNC1(&compressed->vl_len_, compressed_size);

	compressed->last_value = input->header->last_value;
	compressed->compression_algorithm = COMPRESSION_ALGORITHM_GORILLA;
	compressed->has_nulls = input->header->has_nulls;
	data += sizeof(GorillaCompressed);

	data = FUNC3(data, tags0s_size, input->tag0s);
	data = FUNC3(data, tags1s_size, input->tag1s);
	data = FUNC4(data,
											 leading_zeros_size,
											 &input->leading_zeros,
											 &compressed->num_leading_zeroes_buckets,
											 &compressed->bits_used_in_last_leading_zeros_bucket);
	data = FUNC3(data,
												bits_used_per_xor_size,
												input->num_bits_used_per_xor);
	data = FUNC4(data,
											 xors_size,
											 &input->xors,
											 &compressed->num_xor_buckets,
											 &compressed->bits_used_in_last_xor_bucket);

	if (input->header->has_nulls)
		data = FUNC3(data, nulls_size, input->nulls);
	return compressed;
}