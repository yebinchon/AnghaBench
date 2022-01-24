#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_6__ {int has_nulls; int /*<<< orphan*/  element_type; } ;
struct TYPE_5__ {scalar_t__ compression_algorithm; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ CompressedDataHeader ;
typedef  TYPE_2__ ArrayCompressed ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ COMPRESSION_ALGORITHM_ARRAY ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(CompressedDataHeader *header, StringInfo buffer)
{
	const char *compressed_data = (char *) header;
	uint32 data_size;
	ArrayCompressed *compressed_array_header;

	FUNC0(header->compression_algorithm == COMPRESSION_ALGORITHM_ARRAY);
	compressed_array_header = (ArrayCompressed *) header;

	compressed_data += sizeof(*compressed_array_header);

	data_size = FUNC1(compressed_array_header);
	data_size -= sizeof(*compressed_array_header);

	FUNC3(buffer, compressed_array_header->has_nulls == true);

	FUNC4(compressed_array_header->element_type, buffer);

	FUNC2(buffer,
							   compressed_data,
							   data_size,
							   compressed_array_header->element_type,
							   compressed_array_header->has_nulls);
}