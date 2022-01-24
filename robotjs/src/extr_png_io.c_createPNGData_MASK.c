#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct io_data {size_t size; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  info_ptr; int /*<<< orphan*/  png_ptr; } ;
typedef  TYPE_1__* PNGWriteInfoRef ;
typedef  int /*<<< orphan*/ * MMBitmapRef ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_TRANSFORM_IDENTITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  png_append_data ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct io_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

uint8_t *FUNC5(MMBitmapRef bitmap, size_t *len)
{
	PNGWriteInfoRef info = NULL;
	struct io_data data = {NULL, 0, 0};

	FUNC0(bitmap != NULL);
	FUNC0(len != NULL);

	if ((info = FUNC1(bitmap)) == NULL) return NULL;

	FUNC3(info->png_ptr, &data, &png_append_data, NULL);
	FUNC4(info->png_ptr, info->info_ptr, PNG_TRANSFORM_IDENTITY, NULL);

	FUNC2(info);

	*len = data.size;
	return data.buffer;
}