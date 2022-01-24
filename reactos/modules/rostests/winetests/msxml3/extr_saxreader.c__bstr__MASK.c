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
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/ * alloced_bstrs ; 
 size_t alloced_bstrs_count ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static BSTR FUNC3(const char *str)
{
    FUNC2(alloced_bstrs_count < FUNC0(alloced_bstrs));
    alloced_bstrs[alloced_bstrs_count] = FUNC1(str);
    return alloced_bstrs[alloced_bstrs_count++];
}