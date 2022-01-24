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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  MMBitmapRef ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ *) ; 

int FUNC5(MMBitmapRef bitmap, const char *path)
{
	FILE *fp;
	size_t dataLen;
	uint8_t *data;

	if ((fp = FUNC2(path, "wb")) == NULL) return -1;

	if ((data = FUNC0(bitmap, &dataLen)) == NULL) {
		FUNC1(fp);
		return -1;
	}

	if (FUNC4(data, dataLen, 1, fp) == 0) {
		FUNC3(data);
		FUNC1(fp);
		return -1;
	}

	FUNC3(data);
	FUNC1(fp);
	return 0;
}