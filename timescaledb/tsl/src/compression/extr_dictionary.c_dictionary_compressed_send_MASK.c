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
struct TYPE_6__ {scalar_t__ compression_algorithm; } ;
struct TYPE_5__ {int has_nulls; int /*<<< orphan*/  element_type; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ DictionaryCompressed ;
typedef  TYPE_2__ CompressedDataHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ COMPRESSION_ALGORITHM_DICTIONARY ; 
 int FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(CompressedDataHeader *header, StringInfo buffer)
{
	uint32 data_size;
	uint32 size;
	const DictionaryCompressed *compressed_header;
	const char *compressed_data;

	FUNC0(header->compression_algorithm == COMPRESSION_ALGORITHM_DICTIONARY);
	compressed_header = (DictionaryCompressed *) header;

	compressed_data = (char *) compressed_header;

	compressed_data += sizeof(*compressed_header);

	data_size = FUNC1(compressed_header);
	data_size -= sizeof(*compressed_header);

	FUNC3(buffer, compressed_header->has_nulls == true);

	FUNC6(compressed_header->element_type, buffer);

	size = FUNC5((void *) compressed_data);
	FUNC4(buffer, (void *) compressed_data);
	compressed_data += size;
	data_size -= size;

	if (compressed_header->has_nulls)
	{
		uint32 size = FUNC5((void *) compressed_data);
		FUNC4(buffer, (void *) compressed_data);
		compressed_data += size;
		data_size -= size;
	}

	FUNC2(buffer,
							   compressed_data,
							   data_size,
							   compressed_header->element_type,
							   false);
}