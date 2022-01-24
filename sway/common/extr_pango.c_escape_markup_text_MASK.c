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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

size_t FUNC1(const char *src, char *dest) {
	size_t length = 0;
	if (dest) {
		dest[0] = '\0';
	}

	while (src[0]) {
		switch (src[0]) {
		case '&':
			length += 5;
			FUNC0(dest, "&amp;");
			break;
		case '<':
			length += 4;
			FUNC0(dest, "&lt;");
			break;
		case '>':
			length += 4;
			FUNC0(dest, "&gt;");
			break;
		case '\'':
			length += 6;
			FUNC0(dest, "&apos;");
			break;
		case '"':
			length += 6;
			FUNC0(dest, "&quot;");
			break;
		default:
			if (dest) {
				dest[length] = *src;
				dest[length + 1] = '\0';
			}
			length += 1;
		}
		src++;
	}
	return length;
}