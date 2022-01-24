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
 int FUNC0 (unsigned char const*,int,int) ; 
 int FUNC1 (unsigned char const*,int) ; 

__attribute__((used)) static inline int
FUNC2(const unsigned char *line, int x, int w, int color)
{
	if (!line || x >= w)
		return w;

	x = FUNC0(line, (x > 0 || !color) ? x : -1, w);

	if (x < w && FUNC1(line, x) != color)
		x = FUNC0(line, x, w);

	return x;
}