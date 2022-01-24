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
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static __inline char *
FUNC1(char *a, char *b, char *c, int (__cdecl *cmp)(const void*, const void*))
{
	return FUNC0(a, b) < 0 ?
	       (FUNC0(b, c) < 0 ? b : (FUNC0(a, c) < 0 ? c : a ))
              :(FUNC0(b, c) > 0 ? b : (FUNC0(a, c) < 0 ? a : c ));
}