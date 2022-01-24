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
struct paste_buffer {size_t size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int VIS_NL ; 
 int VIS_OCTAL ; 
 int VIS_TAB ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 size_t FUNC1 (char*,int /*<<< orphan*/ ,size_t,int const) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t,int) ; 

char *
FUNC3(struct paste_buffer *pb)
{
	char		*buf;
	size_t		 len, used;
	const int	 flags = VIS_OCTAL|VIS_TAB|VIS_NL;
	const size_t	 width = 200;

	len = pb->size;
	if (len > width)
		len = width;
	buf = FUNC2(NULL, len, 4 + 4);

	used = FUNC1(buf, pb->data, len, flags);
	if (pb->size > width || used > width)
		FUNC0(buf + width, "...", 4);
	return (buf);
}