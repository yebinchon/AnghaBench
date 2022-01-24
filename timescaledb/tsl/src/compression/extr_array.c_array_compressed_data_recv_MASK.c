#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  scalar_t__ uint32 ;
struct TYPE_7__ {scalar_t__ val; int /*<<< orphan*/  is_done; } ;
struct TYPE_6__ {scalar_t__ num_elements; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ Simple8bRleDecompressionIterator ;
typedef  TYPE_2__ Simple8bRleDecompressResult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  DatumDeserializer ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayCompressorSerializationInfo ;
typedef  int /*<<< orphan*/  ArrayCompressor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BINARY_ENCODING ; 
 int /*<<< orphan*/  TEXT_ENCODING ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

ArrayCompressorSerializationInfo *
FUNC12(StringInfo buffer, Oid element_type)
{
	ArrayCompressor *compressor = FUNC1(element_type);
	Simple8bRleDecompressionIterator nulls;
	uint8 has_nulls;
	DatumDeserializer *deser = FUNC6(element_type);
	bool use_binary_recv;
	uint32 num_elements;
	uint32 i;

	has_nulls = FUNC7(buffer) != 0;
	if (has_nulls)
		FUNC9(&nulls,
														FUNC11(buffer));

	use_binary_recv = FUNC7(buffer) != 0;

	/* This is actually the number of not-null elements */
	num_elements = FUNC8(buffer);

	/* if there are nulls, use that count instead */
	if (has_nulls)
		num_elements = nulls.num_elements;

	for (i = 0; i < num_elements; i++)
	{
		Datum val;
		if (has_nulls)
		{
			Simple8bRleDecompressResult null =
				FUNC10(&nulls);
			FUNC0(!null.is_done);
			if (null.val)
			{
				FUNC3(compressor);
				continue;
			}
		}

		val = FUNC5(deser,
									 use_binary_recv ? BINARY_ENCODING : TEXT_ENCODING,
									 buffer);

		FUNC2(compressor, val);
	}

	return FUNC4(compressor);
}