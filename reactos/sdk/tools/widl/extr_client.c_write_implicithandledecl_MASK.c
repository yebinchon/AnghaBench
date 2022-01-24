#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ var_t ;
struct TYPE_6__ {int /*<<< orphan*/  attrs; } ;
typedef  TYPE_2__ type_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_IMPLICIT_HANDLE ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(type_t *iface)
{
    const var_t *implicit_handle = FUNC1(iface->attrs, ATTR_IMPLICIT_HANDLE);

    if (implicit_handle)
    {
        FUNC2( client, implicit_handle->type, implicit_handle->name );
        FUNC0(client, ";\n\n");
    }
}