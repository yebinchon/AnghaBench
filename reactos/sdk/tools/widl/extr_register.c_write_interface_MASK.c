#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  UUID ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_UUID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  indent ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*) ; 

__attribute__((used)) static void FUNC7( const type_t *iface, const type_t *ps_factory )
{
    const UUID *uuid = FUNC2( iface->attrs, ATTR_UUID );
    const UUID *ps_uuid = FUNC2( ps_factory->attrs, ATTR_UUID );

    if (!uuid) return;
    if (!FUNC4( iface )) return;
    if (!FUNC6(iface)) /* special case for IUnknown */
    {
        FUNC5( indent, "'%s' = s '%s'\n", FUNC1( uuid ), iface->name );
        return;
    }
    if (FUNC3( iface->attrs )) return;
    FUNC5( indent, "'%s' = s '%s'\n", FUNC1( uuid ), iface->name );
    FUNC5( indent, "{\n" );
    indent++;
    FUNC5( indent, "NumMethods = s %u\n", FUNC0( iface ));
    FUNC5( indent, "ProxyStubClsid32 = s '%s'\n", FUNC1( ps_uuid ));
    indent--;
    FUNC5( indent, "}\n" );
}