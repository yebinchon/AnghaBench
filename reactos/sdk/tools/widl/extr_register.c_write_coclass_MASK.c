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
struct TYPE_7__ {char* name; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_2__ type_t ;
typedef  int /*<<< orphan*/  UUID ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_HELPSTRING ; 
 int /*<<< orphan*/  ATTR_PROGID ; 
 int /*<<< orphan*/  ATTR_UUID ; 
 int /*<<< orphan*/  ATTR_VERSION ; 
 int /*<<< orphan*/  ATTR_VIPROGID ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  indent ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC7( const type_t *class, const typelib_t *typelib )
{
    const UUID *uuid = FUNC3( class->attrs, ATTR_UUID );
    const char *descr = FUNC3( class->attrs, ATTR_HELPSTRING );
    const char *progid = FUNC3( class->attrs, ATTR_PROGID );
    const char *vi_progid = FUNC3( class->attrs, ATTR_VIPROGID );
    const char *threading = FUNC5( class );
    unsigned int version = FUNC4( class->attrs, ATTR_VERSION );

    if (!uuid) return 0;
    if (typelib && !threading && !progid) return 0;
    if (!descr) descr = class->name;

    FUNC6( indent, "'%s' = s '%s'\n", FUNC2( uuid ), descr );
    FUNC6( indent++, "{\n" );
    if (threading) FUNC6( indent, "InprocServer32 = s '%%MODULE%%' { val ThreadingModel = s '%s' }\n",
                            threading );
    if (progid) FUNC6( indent, "ProgId = s '%s'\n", progid );
    if (typelib)
    {
        const UUID *typelib_uuid = FUNC3( typelib->attrs, ATTR_UUID );
        FUNC6( indent, "TypeLib = s '%s'\n", FUNC2( typelib_uuid ));
        if (!version) version = FUNC4( typelib->attrs, ATTR_VERSION );
    }
    if (version) FUNC6( indent, "Version = s '%u.%u'\n", FUNC0(version), FUNC1(version) );
    if (vi_progid) FUNC6( indent, "VersionIndependentProgId = s '%s'\n", vi_progid );
    FUNC6( --indent, "}\n" );
    return 1;
}