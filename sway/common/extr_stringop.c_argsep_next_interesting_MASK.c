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
 char* FUNC0 (char const*,char const*) ; 

__attribute__((used)) static inline char *FUNC1(const char *src, const char *delim) {
	char *special = FUNC0(src, "\"'\\");
	char *next_delim = FUNC0(src, delim);
	if (!special) {
		return next_delim;
	}
	if (!next_delim) {
		return special;
	}
	return (next_delim < special) ? next_delim : special;
}