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
struct TYPE_4__ {int /*<<< orphan*/  info_ptr; int /*<<< orphan*/  png_ptr; } ;
typedef  TYPE_1__* PNGWriteInfoRef ;
typedef  int /*<<< orphan*/  MMBitmapRef ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_TRANSFORM_IDENTITY ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(MMBitmapRef bitmap, const char *path)
{
	FILE *fp = FUNC3(path, "wb");
	PNGWriteInfoRef info;
	if (fp == NULL) return -1;

	if ((info = FUNC0(bitmap)) == NULL) {
		FUNC2(fp);
		return -1;
	}

	FUNC4(info->png_ptr, fp);
	FUNC5(info->png_ptr, info->info_ptr, PNG_TRANSFORM_IDENTITY, NULL);
	FUNC2(fp);

	FUNC1(info);
	return 0;
}