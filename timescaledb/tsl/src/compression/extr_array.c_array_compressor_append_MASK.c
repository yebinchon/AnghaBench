#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ num_elements; char* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  serializer; TYPE_2__ data; int /*<<< orphan*/  sizes; int /*<<< orphan*/  nulls; } ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_1__ ArrayCompressor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 

void
FUNC8(ArrayCompressor *compressor, Datum val)
{
	Size datum_size_and_align;
	char *start_ptr;
	FUNC7(&compressor->nulls, 0);
	if (FUNC5(compressor->serializer))
		val = FUNC2(FUNC1(val));

	datum_size_and_align =
		FUNC4(compressor->serializer, compressor->data.num_elements, val) -
		compressor->data.num_elements;

	FUNC7(&compressor->sizes, datum_size_and_align);

	/* datum_to_bytes_and_advance will zero any padding bytes, so we need not do so here */
	FUNC3(&compressor->data, datum_size_and_align);
	start_ptr = compressor->data.data + compressor->data.num_elements;
	compressor->data.num_elements += datum_size_and_align;

	FUNC6(compressor->serializer, start_ptr, &datum_size_and_align, val);
	FUNC0(datum_size_and_align == 0);
}