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
 char* FUNC0 (int,scalar_t__) ; 
 int errno ; 
 char* FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (char*,char const*,int) ; 

int
FUNC4(char **outp, const char *src, int flag)
{
	char *buf;
	int len, serrno;

	buf = FUNC0(4, FUNC2(src) + 1);
	if (buf == NULL)
		return -1;
	len = FUNC3(buf, src, flag);
	serrno = errno;
	*outp = FUNC1(buf, len + 1);
	if (*outp == NULL) {
		*outp = buf;
		errno = serrno;
	}
	return (len);
}