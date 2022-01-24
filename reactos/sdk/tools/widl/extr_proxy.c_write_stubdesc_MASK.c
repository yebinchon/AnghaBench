#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ MODE_Oif ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  indent ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  user_type_list ; 

__attribute__((used)) static void FUNC3(int expr_eval_routines)
{
  FUNC2( "static const MIDL_STUB_DESC Object_StubDesc =\n{\n");
  indent++;
  FUNC2( "0,\n");
  FUNC2( "NdrOleAllocate,\n");
  FUNC2( "NdrOleFree,\n");
  FUNC2( "{0}, 0, 0, %s, 0,\n", expr_eval_routines ? "ExprEvalRoutines" : "0");
  FUNC2( "__MIDL_TypeFormatString.Format,\n");
  FUNC2( "1, /* -error bounds_check flag */\n");
  FUNC2( "0x%x, /* Ndr library version */\n", FUNC0() == MODE_Oif ? 0x50002 : 0x10001);
  FUNC2( "0,\n");
  FUNC2( "0x50100a4, /* MIDL Version 5.1.164 */\n");
  FUNC2( "0,\n");
  FUNC2("%s,\n", FUNC1(&user_type_list) ? "0" : "UserMarshalRoutines");
  FUNC2( "0,  /* notify & notify_flag routine table */\n");
  FUNC2( "1,  /* Flags */\n");
  FUNC2( "0,  /* Reserved3 */\n");
  FUNC2( "0,  /* Reserved4 */\n");
  FUNC2( "0   /* Reserved5 */\n");
  indent--;
  FUNC2( "};\n");
  FUNC2( "\n");
}