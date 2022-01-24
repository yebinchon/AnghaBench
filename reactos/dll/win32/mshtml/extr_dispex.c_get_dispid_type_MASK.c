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
typedef  int /*<<< orphan*/  dispex_prop_type_t ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  DISPEXPROP_BUILTIN ; 
 int /*<<< orphan*/  DISPEXPROP_CUSTOM ; 
 int /*<<< orphan*/  DISPEXPROP_DYNAMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

dispex_prop_type_t FUNC2(DISPID id)
{
    if(FUNC1(id))
        return DISPEXPROP_DYNAMIC;
    if(FUNC0(id))
        return DISPEXPROP_CUSTOM;
    return DISPEXPROP_BUILTIN;
}