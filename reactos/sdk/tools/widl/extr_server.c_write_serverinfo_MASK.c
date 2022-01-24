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

/* Variables and functions */
 int /*<<< orphan*/  indent ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(type_t *iface)
{
    FUNC0( "static const MIDL_SERVER_INFO %s_ServerInfo =\n", iface->name );
    FUNC0( "{\n" );
    indent++;
    FUNC0( "&%s_StubDesc,\n", iface->name );
    FUNC0( "%s_ServerRoutineTable,\n", iface->name );
    FUNC0( "__MIDL_ProcFormatString.Format,\n" );
    FUNC0( "%s_FormatStringOffsetTable,\n", iface->name );
    FUNC0( "0,\n" );
    FUNC0( "0,\n" );
    FUNC0( "0,\n" );
    FUNC0( "0\n" );
    indent--;
    FUNC0( "};\n\n" );
}