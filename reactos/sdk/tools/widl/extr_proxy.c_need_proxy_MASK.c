#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_DISPINTERFACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 

int FUNC3(const type_t *iface)
{
    if (!FUNC2( iface )) return 0;
    if (FUNC1( iface->attrs )) return 0;
    if (FUNC0( iface->attrs, ATTR_DISPINTERFACE )) return 0;
    return 1;
}