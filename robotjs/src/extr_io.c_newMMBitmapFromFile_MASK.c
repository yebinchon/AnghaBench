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
typedef  int /*<<< orphan*/  MMIOError ;
typedef  int /*<<< orphan*/ * MMBitmapRef ;

/* Variables and functions */
#define  kBMPImageType 129 
 int /*<<< orphan*/  kMMIOUnsupportedTypeError ; 
#define  kPNGImageType 128 
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *) ; 

MMBitmapRef FUNC2(const char *path, 
                                MMImageType type,
                                MMIOError *err)
{
	switch (type) {
		case kBMPImageType:
			return FUNC0(path, err);
		case kPNGImageType:
			return FUNC1(path, err);
		default:
			if (err != NULL) *err = kMMIOUnsupportedTypeError;
			return NULL;
	}
}