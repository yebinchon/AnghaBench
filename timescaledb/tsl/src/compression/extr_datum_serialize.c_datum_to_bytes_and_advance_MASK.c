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
struct TYPE_3__ {char type_align; int type_len; int /*<<< orphan*/  type_storage; scalar_t__ type_by_val; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  Pointer ;
typedef  TYPE_1__ DatumSerializer ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (char*,char,int*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 

char *
FUNC18(DatumSerializer *serializer, char *ptr, Size *max_size, Datum datum)
{
	Size data_length;

	if (serializer->type_by_val)
	{
		/* pass-by-value */
		ptr = FUNC12(ptr, serializer->type_align, max_size);
		data_length = serializer->type_len;
		FUNC13(data_length, *max_size);
		FUNC16(ptr, datum, data_length);
	}
	else if (serializer->type_len == -1)
	{
		/* varlena */
		Pointer val = FUNC2(datum);

		if (FUNC7(val))
		{
			/*
			 * Throw error, because we should never get a toast datum.
			 *  Caller should have detoasted it.
			 */
			FUNC14(ERROR, "datum should be detoasted before passed to datum_to_bytes_and_advance");
			data_length = 0; /* keep compiler quiet */
		}
		else if (FUNC8(val))
		{
			/* no alignment for short varlenas */
			data_length = FUNC11(val);
			FUNC13(data_length, *max_size);
			FUNC15(ptr, val, data_length);
		}
		else if (FUNC4(serializer->type_len, serializer->type_storage) &&
				 FUNC5(val))
		{
			/* convert to short varlena -- no alignment */
			data_length = FUNC6(val);
			FUNC13(data_length, *max_size);
			FUNC3(ptr, data_length);
			FUNC15(ptr + 1, FUNC9(val), data_length - 1);
		}
		else
		{
			/* full 4-byte header varlena */
			ptr = FUNC12(ptr, serializer->type_align, max_size);
			data_length = FUNC10(val);
			FUNC13(data_length, *max_size);
			FUNC15(ptr, val, data_length);
		}
	}
	else if (serializer->type_len == -2)
	{
		/* cstring ... never needs alignment */
		FUNC0(serializer->type_align == 'c');
		data_length = FUNC17(FUNC1(datum)) + 1;
		FUNC13(data_length, *max_size);
		FUNC15(ptr, FUNC2(datum), data_length);
	}
	else
	{
		/* fixed-length pass-by-reference */
		ptr = FUNC12(ptr, serializer->type_align, max_size);
		FUNC0(serializer->type_len > 0);
		data_length = serializer->type_len;
		FUNC13(data_length, *max_size);
		FUNC15(ptr, FUNC2(datum), data_length);
	}

	ptr += data_length;
	*max_size = *max_size - data_length;

	return ptr;
}