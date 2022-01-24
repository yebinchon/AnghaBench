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
struct fmtbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fmtbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,int,double) ; 

__attribute__((used)) static void FUNC2(struct fmtbuf *out, double f, int w, int p)
{
	char buf[100], *s = buf;
	FUNC1(buf, sizeof buf, "%*.*e", w, p, f);
	while (*s)
		FUNC0(out, *s++);
}