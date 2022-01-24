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
typedef  scalar_t__ uint32 ;
struct TYPE_4__ {scalar_t__ num_elements; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {scalar_t__ total; TYPE_1__ data; int /*<<< orphan*/ * sizes; int /*<<< orphan*/ * nulls; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_2__ ArrayCompressorSerializationInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

char *
FUNC4(char *dst, Size dst_size,
											 ArrayCompressorSerializationInfo *info)
{
	uint32 sizes_bytes = FUNC3(info->sizes);

	FUNC0(dst_size == info->total);

	if (info->nulls != NULL)
	{
		uint32 nulls_bytes = FUNC3(info->nulls);
		FUNC0(dst_size >= nulls_bytes);
		dst = FUNC1(dst, nulls_bytes, info->nulls);
		dst_size -= nulls_bytes;
	}

	FUNC0(dst_size >= sizes_bytes);
	dst = FUNC1(dst, sizes_bytes, info->sizes);
	dst_size -= sizes_bytes;

	FUNC0(dst_size == info->data.num_elements);
	FUNC2(dst, info->data.data, info->data.num_elements);
	return dst + info->data.num_elements;
}