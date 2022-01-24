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
 int /*<<< orphan*/  __tolower1 ; 
 int /*<<< orphan*/  __tolower2 ; 
 scalar_t__* FUNC0 (scalar_t__ const,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(Rune c)
{
	const Rune *p;

	p = FUNC0(c, __tolower2, FUNC1(__tolower2)/3, 3);
	if(p && c >= p[0] && c <= p[1])
		return 1;
	p = FUNC0(c, __tolower1, FUNC1(__tolower1)/2, 2);
	if(p && c == p[0])
		return 1;
	return 0;
}