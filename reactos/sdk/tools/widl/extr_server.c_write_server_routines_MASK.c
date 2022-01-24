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
typedef  int /*<<< orphan*/  statement_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  indent ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  need_stub ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  server_token ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(const statement_list_t *stmts)
{
    unsigned int proc_offset = 0;
    int expr_eval_routines;

    if (FUNC0( stmts ))
    {
        FUNC2( server );
        FUNC1("\n");
        FUNC1("struct __server_frame\n");
        FUNC1("{\n");
        FUNC1("    __DECL_EXCEPTION_FRAME\n");
        FUNC1("    MIDL_STUB_MESSAGE _StubMsg;\n");
        FUNC1("};\n");
        FUNC1("\n");
        FUNC1("static int __server_filter( struct __server_frame *__frame )\n");
        FUNC1( "{\n");
        FUNC1( "    return (__frame->code == STATUS_ACCESS_VIOLATION) ||\n");
        FUNC1( "           (__frame->code == STATUS_DATATYPE_MISALIGNMENT) ||\n");
        FUNC1( "           (__frame->code == RPC_X_BAD_STUB_DATA) ||\n");
        FUNC1( "           (__frame->code == RPC_S_INVALID_BOUND);\n");
        FUNC1( "}\n");
        FUNC1( "\n");
    }

    FUNC5(server, indent, stmts, need_stub);
    expr_eval_routines = FUNC4(server, server_token);
    if (expr_eval_routines)
        FUNC3(server, server_token);
    FUNC10(server);
    FUNC7();

    FUNC8(stmts, expr_eval_routines, &proc_offset);

    FUNC6(server, stmts, need_stub);
    FUNC9(server, stmts, need_stub);
}