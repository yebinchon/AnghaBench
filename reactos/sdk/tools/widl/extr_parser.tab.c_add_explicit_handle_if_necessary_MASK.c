#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ var_t ;
typedef  int /*<<< orphan*/  type_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,TYPE_1__*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(const type_t *iface, var_t *func)
{
    unsigned char explicit_fc, implicit_fc;

    /* check for a defined binding handle */
    if (!FUNC2( iface, func, &explicit_fc, &implicit_fc ) || !explicit_fc)
    {
        /* no explicit handle specified so add
         * "[in] handle_t IDL_handle" as the first parameter to the
         * function */
        var_t *idl_handle = FUNC4(FUNC6("IDL_handle"));
        idl_handle->attrs = FUNC0(NULL, FUNC3(ATTR_IN));
        idl_handle->type = FUNC1("handle_t", 0);
        FUNC5(func->type, idl_handle);
    }
}