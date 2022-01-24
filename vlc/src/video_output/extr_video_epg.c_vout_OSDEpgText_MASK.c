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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  subpicture_region_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static subpicture_region_t * FUNC2(const char *text,
                                             int x, int y,
                                             int size, uint32_t color)
{
    return FUNC1(FUNC0(text, size, color), x, y);
}