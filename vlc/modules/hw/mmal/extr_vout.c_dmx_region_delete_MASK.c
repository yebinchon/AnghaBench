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
struct dmx_region_t {int /*<<< orphan*/  resource; int /*<<< orphan*/  element; } ;
typedef  int /*<<< orphan*/  DISPMANX_UPDATE_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmx_region_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dmx_region_t *dmx_region,
                DISPMANX_UPDATE_HANDLE_T update)
{
    FUNC1(update, dmx_region->element);
    FUNC2(dmx_region->resource);
    FUNC0(dmx_region);
}