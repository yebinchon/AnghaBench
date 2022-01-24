#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_3__ {scalar_t__ compression_algorithm; scalar_t__ element_type; int has_nulls; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  DecompressionIterator ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_1__ ArrayCompressed ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ COMPRESSION_ALGORITHM_ARRAY ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

DecompressionIterator *
FUNC5(Datum compressed_array, Oid element_type)
{
	ArrayCompressed *compressed_array_header;
	uint32 data_size;
	const char *compressed_data = (void *) FUNC1(compressed_array);

	compressed_array_header = (ArrayCompressed *) compressed_data;
	compressed_data += sizeof(*compressed_array_header);

	FUNC0(compressed_array_header->compression_algorithm == COMPRESSION_ALGORITHM_ARRAY);

	data_size = FUNC2(compressed_array_header);
	data_size -= sizeof(*compressed_array_header);

	if (element_type != compressed_array_header->element_type)
		FUNC4(ERROR, "trying to decompress the wrong type");

	return FUNC3(compressed_data,
													  data_size,
													  compressed_array_header->element_type,
													  compressed_array_header->has_nulls == 1);
}