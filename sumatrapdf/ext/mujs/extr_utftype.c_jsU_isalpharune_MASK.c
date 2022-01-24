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
typedef  scalar_t__ const Rune ;

/* Variables and functions */
 int /*<<< orphan*/  __alpha1 ; 
 int /*<<< orphan*/  __alpha2 ; 
 scalar_t__* FUNC0 (scalar_t__ const,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (scalar_t__ const) ; 
 scalar_t__ FUNC2 (scalar_t__ const) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(Rune c)
{
	const Rune *p;

	if(FUNC2(c) || FUNC1(c))
		return 1;
	p = FUNC0(c, __alpha2, FUNC3(__alpha2)/2, 2);
	if(p && c >= p[0] && c <= p[1])
		return 1;
	p = FUNC0(c, __alpha1, FUNC3(__alpha1), 1);
	if(p && c == p[0])
		return 1;
	return 0;
}