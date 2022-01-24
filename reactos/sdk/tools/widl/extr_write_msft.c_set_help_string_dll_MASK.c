#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int varflags; } ;
struct TYPE_8__ {int help_string_dll_offset; TYPE_2__ typelib_header; TYPE_1__* typelib; } ;
typedef  TYPE_3__ msft_typelib_t ;
struct TYPE_6__ {int /*<<< orphan*/  attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_HELPSTRINGDLL ; 
 int FUNC0 (TYPE_3__*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(msft_typelib_t *typelib)
{
    char *str = FUNC1( typelib->typelib->attrs, ATTR_HELPSTRINGDLL );

    if (str)
    {
        int offset = FUNC0(typelib, str);
        if (offset != -1)
        {
            typelib->help_string_dll_offset = offset;
            typelib->typelib_header.varflags |= 0x100;
        }
    }
}