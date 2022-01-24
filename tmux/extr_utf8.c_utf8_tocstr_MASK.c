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
struct utf8_data {scalar_t__ size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC1 (char*,size_t,int) ; 

char *
FUNC2(struct utf8_data *src)
{
	char	*dst;
	size_t	 n;

	dst = NULL;

	n = 0;
	for(; src->size != 0; src++) {
		dst = FUNC1(dst, n + src->size, 1);
		FUNC0(dst + n, src->data, src->size);
		n += src->size;
	}

	dst = FUNC1(dst, n + 1, 1);
	dst[n] = '\0';
	return (dst);
}