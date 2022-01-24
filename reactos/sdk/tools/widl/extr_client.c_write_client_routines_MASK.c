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
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  client_token ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  indent ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  need_stub ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(const statement_list_t *stmts)
{
    unsigned int proc_offset = 0;
    int expr_eval_routines;

    if (FUNC1( stmts ))
    {
        FUNC4( client );
        FUNC2( "\n");
    }

    FUNC7(client, indent, stmts, need_stub);
    expr_eval_routines = FUNC6(client, client_token);
    if (expr_eval_routines)
        FUNC5(client, client_token);
    FUNC8();
    FUNC11(client);

    FUNC3(stmts, expr_eval_routines, &proc_offset);

    FUNC0(client, "\n");

    FUNC9(client, stmts, need_stub);
    FUNC10(client, stmts, need_stub);
}