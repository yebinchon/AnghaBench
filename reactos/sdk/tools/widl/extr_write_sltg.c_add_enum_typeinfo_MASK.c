#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ type_t ;
struct sltg_typelib {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct sltg_typelib *typelib, type_t *type)
{
    FUNC0("add_enum_typeinfo: %s not implemented\n", type->name);
}