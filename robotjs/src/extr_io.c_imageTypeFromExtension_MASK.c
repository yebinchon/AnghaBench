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
typedef  int /*<<< orphan*/  ext ;
typedef  int /*<<< orphan*/  MMImageType ;

/* Variables and functions */
 int /*<<< orphan*/  kBMPImageType ; 
 int /*<<< orphan*/  kInvalidImageType ; 
 int /*<<< orphan*/  kPNGImageType ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 char FUNC1 (char const) ; 

MMImageType FUNC2(const char *extension)
{
	char ext[4];
	const size_t maxlen = sizeof(ext) / sizeof(ext[0]);
	size_t i;

	for (i = 0; extension[i] != '\0'; ++i) {
		if (i >= maxlen) return kInvalidImageType;
		ext[i] = FUNC1(extension[i]);
	}
	ext[i] = '\0';

	if (FUNC0(ext, "png") == 0) {
		return kPNGImageType;
	} else if (FUNC0(ext, "bmp") == 0) {
		return kBMPImageType;
	} else {
		return kInvalidImageType;
	}
}