#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_12__ {scalar_t__ compression_algorithm; scalar_t__ element_type; int /*<<< orphan*/  has_nulls; } ;
struct TYPE_11__ {int /*<<< orphan*/  data_len; int /*<<< orphan*/  data; int /*<<< orphan*/ * sizes; int /*<<< orphan*/ * nulls; } ;
struct TYPE_9__ {int forward; scalar_t__ element_type; int /*<<< orphan*/  try_next; scalar_t__ compression_algorithm; } ;
struct TYPE_10__ {int has_nulls; TYPE_1__ base; int /*<<< orphan*/  deserializer; int /*<<< orphan*/  num_data_bytes; int /*<<< orphan*/  data_offset; int /*<<< orphan*/  data; int /*<<< orphan*/  sizes; int /*<<< orphan*/  nulls; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ DecompressionIterator ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_2__ ArrayDecompressionIterator ;
typedef  TYPE_3__ ArrayCompressedData ;
typedef  TYPE_4__ ArrayCompressed ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ COMPRESSION_ALGORITHM_ARRAY ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*) ; 
 TYPE_3__ FUNC3 (char const*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  array_decompression_iterator_try_next_reverse ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

DecompressionIterator *
FUNC8(Datum compressed_array, Oid element_type)
{
	ArrayCompressed *compressed_array_header;
	uint32 data_size;
	ArrayCompressedData array_compressed_data;
	ArrayDecompressionIterator *iterator = FUNC6(sizeof(*iterator));
	const char *compressed_data = (void *) FUNC1(compressed_array);
	iterator->base.compression_algorithm = COMPRESSION_ALGORITHM_ARRAY;
	iterator->base.forward = false;
	iterator->base.element_type = element_type;
	iterator->base.try_next = array_decompression_iterator_try_next_reverse;

	compressed_array_header = (ArrayCompressed *) compressed_data;
	compressed_data += sizeof(*compressed_array_header);

	FUNC0(compressed_array_header->compression_algorithm == COMPRESSION_ALGORITHM_ARRAY);
	if (element_type != compressed_array_header->element_type)
		FUNC5(ERROR, "trying to decompress the wrong type");

	data_size = FUNC2(compressed_array_header);
	data_size -= sizeof(*compressed_array_header);

	array_compressed_data = FUNC3(compressed_data,
															 data_size,
															 compressed_array_header->element_type,
															 compressed_array_header->has_nulls);

	iterator->has_nulls = array_compressed_data.nulls != NULL;
	if (iterator->has_nulls)
		FUNC7(&iterator->nulls,
														array_compressed_data.nulls);

	FUNC7(&iterator->sizes, array_compressed_data.sizes);

	iterator->data = array_compressed_data.data;
	iterator->num_data_bytes = array_compressed_data.data_len;
	iterator->data_offset = iterator->num_data_bytes;
	iterator->deserializer = FUNC4(iterator->base.element_type);

	return &iterator->base;
}