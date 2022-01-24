#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct io_data {int size; int allocedSize; int /*<<< orphan*/ * buffer; } ;
typedef  int /*<<< orphan*/  png_struct ;
typedef  int png_size_t ;
typedef  int /*<<< orphan*/  png_byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct io_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5(png_struct *png_ptr,
                     png_byte *new_data,
                     png_size_t length)
{
	struct io_data *data = FUNC2(png_ptr);
	data->size += length;

	/* Allocate or grow buffer. */
	if (data->buffer == NULL) {
		data->allocedSize = data->size;
		data->buffer = FUNC3(png_ptr, data->allocedSize);
		FUNC0(data->buffer != NULL);
	} else if (data->allocedSize < data->size) {
		do {
			/* Double size each time to avoid calls to realloc. */
			data->allocedSize <<= 1;
		} while (data->allocedSize < data->size);

		data->buffer = FUNC4(data->buffer, data->allocedSize);
	}

	/* Copy new bytes to end of buffer. */
	FUNC1(data->buffer + data->size - length, new_data, length);
}