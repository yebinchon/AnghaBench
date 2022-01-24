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
 scalar_t__ FUNC0 (size_t) ; 
 size_t FUNC1 (char const*) ; 

char* FUNC2(const char* src, const char c, const char* rep)
{
	size_t i, j, k, count=0, str_len = FUNC1(src), rep_len = FUNC1(rep);
	char* res;

	if ((src == NULL) || (rep == NULL))
		return NULL;
	for (i=0; i<str_len; i++) {
		if (src[i] == c)
			count++;
	}
	res = (char*)FUNC0(str_len + count*rep_len + 1);
	if (res == NULL)
		return NULL;
	for (i=0,j=0; i<str_len; i++) {
		if (src[i] == c) {
			for(k=0; k<rep_len; k++)
				res[j++] = rep[k];
		} else {
// Since the VS Code Analysis tool is dumb...
#if defined(_MSC_VER)
#pragma warning(suppress: 6386)
#endif
			res[j++] = src[i];
		}
	}
	res[j] = 0;
	return res;
}