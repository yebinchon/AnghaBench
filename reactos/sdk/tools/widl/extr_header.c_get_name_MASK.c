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
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ var_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_PROPGET ; 
 int /*<<< orphan*/  ATTR_PROPPUT ; 
 int /*<<< orphan*/  ATTR_PROPPUTREF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

const char *FUNC3(const var_t *v)
{
    static char buffer[256];

    if (FUNC0( v->attrs, ATTR_PROPGET ))
        FUNC2( buffer, "get_" );
    else if (FUNC0( v->attrs, ATTR_PROPPUT ))
        FUNC2( buffer, "put_" );
    else if (FUNC0( v->attrs, ATTR_PROPPUTREF ))
        FUNC2( buffer, "putref_" );
    else
        buffer[0] = 0;
    FUNC1( buffer, v->name );
    return buffer;
}