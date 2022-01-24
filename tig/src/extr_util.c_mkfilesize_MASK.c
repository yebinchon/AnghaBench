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
typedef  enum file_size { ____Placeholder_file_size } file_size ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FILE_SIZE_UNITS ; 
 scalar_t__ FUNC1 (char*,char const*,unsigned long,...) ; 

const char *
FUNC2(unsigned long size, enum file_size format)
{
	static char buf[64 + 1];
	static const char relsize[] = {
		'B', 'K', 'M', 'G', 'T', 'P'
	};

	if (!format)
		return "";

	if (format == FILE_SIZE_UNITS) {
		const char *fmt = "%.0f%c";
		double rsize = size;
		int i;

		for (i = 0; i < FUNC0(relsize); i++) {
			if (rsize > 1024.0 && i + 1 < FUNC0(relsize)) {
				rsize /= 1024;
				continue;
			}

			size = rsize * 10;
			if (size % 10 > 0)
				fmt = "%.1f%c";

			return FUNC1(buf, fmt, rsize, relsize[i])
				? buf : NULL;
		}
	}

	return FUNC1(buf, "%ld", size) ? buf : NULL;
}