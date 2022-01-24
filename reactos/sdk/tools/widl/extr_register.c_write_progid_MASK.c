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
struct TYPE_3__ {char* name; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  UUID ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_HELPSTRING ; 
 int /*<<< orphan*/  ATTR_PROGID ; 
 int /*<<< orphan*/  ATTR_UUID ; 
 int /*<<< orphan*/  ATTR_VIPROGID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  indent ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int FUNC4( const type_t *class )
{
    const UUID *uuid = FUNC1( class->attrs, ATTR_UUID );
    const char *descr = FUNC1( class->attrs, ATTR_HELPSTRING );
    const char *progid = FUNC1( class->attrs, ATTR_PROGID );
    const char *vi_progid = FUNC1( class->attrs, ATTR_VIPROGID );

    if (!uuid) return 0;
    if (!descr) descr = class->name;

    if (progid)
    {
        FUNC2( indent, "'%s' = s '%s'\n", progid, descr );
        FUNC2( indent++, "{\n" );
        FUNC2( indent, "CLSID = s '%s'\n", FUNC0( uuid ) );
        FUNC2( --indent, "}\n" );
    }
    if (vi_progid)
    {
        FUNC2( indent, "'%s' = s '%s'\n", vi_progid, descr );
        FUNC2( indent++, "{\n" );
        FUNC2( indent, "CLSID = s '%s'\n", FUNC0( uuid ) );
        if (progid && FUNC3( progid, vi_progid )) FUNC2( indent, "CurVer = s '%s'\n", progid );
        FUNC2( --indent, "}\n" );
    }
    return 1;
}