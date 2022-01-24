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
typedef  int /*<<< orphan*/  Int16 ;

/* Variables and functions */
 void* FUNC0 (void*,void*,int) ; 

__attribute__((used)) static void *FUNC1(Int16 code, void *d, void *s, Int16 len)
{
	d = FUNC0(d, &code, 2);
	d = FUNC0(d, &len, 2);

	return FUNC0(d, s, len);
}