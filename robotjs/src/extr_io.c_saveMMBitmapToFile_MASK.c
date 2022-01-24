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
typedef  int MMImageType ;
typedef  int /*<<< orphan*/  MMBitmapRef ;

/* Variables and functions */
#define  kBMPImageType 129 
#define  kPNGImageType 128 
 int FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 

int FUNC2(MMBitmapRef bitmap,
                       const char *path,
                       MMImageType type)
{
	switch (type) {
		case kBMPImageType:
			return FUNC0(bitmap, path);
		case kPNGImageType:
			return FUNC1(bitmap, path);
		default:
			return -1;
	}
}