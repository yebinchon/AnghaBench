#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_2__ {size_t wMaxId; } ;

/* Variables and functions */
 size_t MMDRV_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* llTypes ; 

UINT	FUNC2(UINT type)
{
    FUNC0("(%04x)\n", type);
    FUNC1(type < MMDRV_MAX);
    return llTypes[type].wMaxId;
}