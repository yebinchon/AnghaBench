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
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int WIM_HAS_7Z_EXTRACT ; 
 int WIM_HAS_API_EXTRACT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char const*,int,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,int,char const*,char const*) ; 
 int wim_flags ; 

BOOL FUNC4(const char* image, int index, const char* src, const char* dst)
{
	if ((wim_flags == 0) && (!FUNC0(FUNC1())))
		return FALSE;
	if ((image == NULL) || (src == NULL) || (dst == NULL))
		return FALSE;

	// Prefer 7-Zip as, unsurprisingly, it's faster than the Microsoft way,
	// but allow fallback if 7-Zip doesn't succeed
	return ( ((wim_flags & WIM_HAS_7Z_EXTRACT) && FUNC2(image, index, src, dst))
		  || ((wim_flags & WIM_HAS_API_EXTRACT) && FUNC3(image, index, src, dst)) );
}