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
 int FUNC0 (char const*,char*) ; 

int FUNC1(const char *needle, char **haystack, int start, int end) {
    int mid;
    int rc;

    if (start == end) {
        return -1;
    }

    mid = start + ((end - start) / 2);

    rc = FUNC0(needle, haystack[mid]);
    if (rc < 0) {
        return FUNC1(needle, haystack, start, mid);
    } else if (rc > 0) {
        return FUNC1(needle, haystack, mid + 1, end);
    }

    return mid;
}