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
struct TYPE_4__ {int /*<<< orphan*/  importlibs; int /*<<< orphan*/  const* attrs; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ typelib_t ;
typedef  int /*<<< orphan*/  attr_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static typelib_t *FUNC3(const char *name, const attr_list_t *attrs)
{
    typelib_t *typelib = FUNC1(sizeof(*typelib));
    typelib->name = FUNC2(name);
    typelib->attrs = attrs;
    FUNC0( &typelib->importlibs );
    return typelib;
}