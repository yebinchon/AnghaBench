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
typedef  int /*<<< orphan*/  type_t ;

/* Variables and functions */
 int TRUE ; 
 scalar_t__ TYPE_ARRAY ; 
 scalar_t__ TYPE_BASIC ; 
 scalar_t__ TYPE_ENUM ; 
 scalar_t__ TYPE_POINTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 

int FUNC2(const type_t *t)
{
    if (FUNC0(t))
        return TRUE;
    return (FUNC1(t) != TYPE_BASIC &&
            FUNC1(t) != TYPE_ENUM &&
            FUNC1(t) != TYPE_POINTER &&
            FUNC1(t) != TYPE_ARRAY);
}