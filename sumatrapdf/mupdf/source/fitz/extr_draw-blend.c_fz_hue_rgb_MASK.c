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
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,unsigned char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,unsigned char*,unsigned char,unsigned char,unsigned char,int,int,int) ; 

__attribute__((used)) static void
FUNC2(unsigned char *rr, unsigned char *rg, unsigned char *rb, int br, int bg, int bb, int sr, int sg, int sb)
{
	unsigned char tr, tg, tb;
	FUNC0(&tr, &tg, &tb, sr, sg, sb, br, bg, bb);
	FUNC1(rr, rg, rb, tr, tg, tb, br, bg, bb);
}