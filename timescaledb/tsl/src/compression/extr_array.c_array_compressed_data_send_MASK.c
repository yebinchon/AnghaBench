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
struct TYPE_8__ {TYPE_1__* sizes; int /*<<< orphan*/ * nulls; } ;
struct TYPE_7__ {int /*<<< orphan*/  val; scalar_t__ is_null; int /*<<< orphan*/  is_done; } ;
struct TYPE_6__ {int /*<<< orphan*/  num_elements; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  DecompressionIterator ;
typedef  TYPE_2__ DecompressResult ;
typedef  int /*<<< orphan*/  DatumSerializer ;
typedef  scalar_t__ BinaryStringEncoding ;
typedef  TYPE_3__ ArrayCompressedData ;

/* Variables and functions */
 scalar_t__ BINARY_ENCODING ; 
 TYPE_3__ FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC9(StringInfo buffer, const char *serialized_data, Size data_size,
						   Oid element_type, bool has_nulls)
{
	ArrayCompressedData data;
	DecompressionIterator *data_iter;
	DecompressResult datum;
	DatumSerializer *serializer = FUNC3(element_type);
	BinaryStringEncoding encoding = FUNC5(serializer);

	data = FUNC0(serialized_data, data_size, element_type, has_nulls);

	FUNC6(buffer, data.nulls != NULL);
	if (data.nulls != NULL)
		FUNC8(buffer, data.nulls);

	FUNC6(buffer, encoding == BINARY_ENCODING);

	/*
	 * we do not send data.sizes because the sizes need not be the same once
	 * deserialized, and we will need to recalculate them on recv. We do need
	 * to send the number of elements, which is always the same as the number
	 * of sizes.
	 */
	FUNC7(buffer, data.sizes->num_elements);
	data_iter = FUNC1(serialized_data,
														   data_size,
														   element_type,
														   has_nulls);
	for (datum = FUNC2(data_iter); !datum.is_done;
		 datum = FUNC2(data_iter))
	{
		if (datum.is_null)
			continue;

		FUNC4(serializer, encoding, buffer, datum.val);
	}
}