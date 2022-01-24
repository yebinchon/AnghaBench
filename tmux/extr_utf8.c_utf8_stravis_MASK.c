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
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char*,char const*,scalar_t__,int) ; 
 char* FUNC2 (char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,scalar_t__) ; 

int
FUNC4(char **dst, const char *src, int flag)
{
	char	*buf;
	int	 len;

	buf = FUNC3(NULL, 4, FUNC0(src) + 1);
	len = FUNC1(buf, src, FUNC0(src), flag);

	*dst = FUNC2(buf, len + 1);
	return (len);
}