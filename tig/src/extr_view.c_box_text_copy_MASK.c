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
struct box {char* text; } ;

/* Variables and functions */
 char* FUNC0 (struct box*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

void
FUNC2(struct box *box, size_t cells, const char *src, size_t srclen)
{
	char *dst = FUNC0(box, cells);

	box->text = dst;
	FUNC1(dst, src, srclen);
}