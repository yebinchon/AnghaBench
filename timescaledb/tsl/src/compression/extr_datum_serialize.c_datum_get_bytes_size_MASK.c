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
struct TYPE_3__ {int type_len; int /*<<< orphan*/  type_align; int /*<<< orphan*/  type_storage; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Pointer ;
typedef  TYPE_1__ DatumSerializer ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

Size
FUNC8(DatumSerializer *serializer, Size start_offset, Datum val)
{
	Size data_length = start_offset;

	if (serializer->type_len == -1)
	{
		/* varlena */
		Pointer ptr = FUNC0(val);

		if (FUNC4(ptr))
		{
			/*
			 * Throw error, because we should never get a toasted datum.
			 * Caller should have detoasted it.
			 */
			FUNC7(ERROR, "datum should be detoasted before passed to datum_get_bytes_size");
		}
	}

	if (FUNC1(serializer->type_len, serializer->type_storage) &&
		FUNC2(FUNC0(val)))
	{
		/*
		 * we're anticipating converting to a short varlena header, so adjust
		 * length and don't count any alignment (the case where the Datum is already
		 * in short format is handled by att_align_datum)
		 */
		data_length += FUNC3(FUNC0(val));
	}
	else
	{
		data_length =
			FUNC6(data_length, serializer->type_align, serializer->type_len, val);
		data_length = FUNC5(data_length, serializer->type_len, val);
	}

	return data_length;
}