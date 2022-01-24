#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ typelib_t ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_2__ type_t ;
typedef  int /*<<< orphan*/  UUID ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_DISPINTERFACE ; 
 int /*<<< orphan*/  ATTR_OLEAUTOMATION ; 
 int /*<<< orphan*/  ATTR_UUID ; 
 int /*<<< orphan*/  ATTR_VERSION ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  indent ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC8( const type_t *iface, const typelib_t *typelib )
{
    const UUID *typelib_uuid = FUNC3( typelib->attrs, ATTR_UUID );
    const UUID *uuid = FUNC3( iface->attrs, ATTR_UUID );
    unsigned int version = FUNC4( typelib->attrs, ATTR_VERSION );

    if (!uuid) return;
    if (!FUNC6( iface )) return;
    if (!FUNC5( iface->attrs, ATTR_OLEAUTOMATION ) && !FUNC5( iface->attrs, ATTR_DISPINTERFACE ))
        return;
    FUNC7( indent, "'%s' = s '%s'\n", FUNC2( uuid ), iface->name );
    FUNC7( indent, "{\n" );
    indent++;
    FUNC7( indent, "ProxyStubClsid = s '{00020424-0000-0000-C000-000000000046}'\n" );
    FUNC7( indent, "ProxyStubClsid32 = s '{00020424-0000-0000-C000-000000000046}'\n" );
    if (version)
        FUNC7( indent, "TypeLib = s '%s' { val Version = s '%u.%u' }\n",
                 FUNC2( typelib_uuid ), FUNC0(version), FUNC1(version) );
    else
        FUNC7( indent, "TypeLib = s '%s'", FUNC2( typelib_uuid ));
    indent--;
    FUNC7( indent, "}\n" );
}