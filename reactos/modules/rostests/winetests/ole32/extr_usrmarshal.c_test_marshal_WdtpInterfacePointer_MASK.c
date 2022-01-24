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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MSHCTX_DIFFERENTMACHINE ; 
 int /*<<< orphan*/  MSHCTX_INPROC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC2(void)
{
    /*
     * There are two places where we can pass the marshalling ctx: as
     * part of the umcb and as a separate flag.  The loword of that
     * separate flag field is what matters.
     */

    /* All three are marshalled as inproc */
    FUNC1(MSHCTX_INPROC, MSHCTX_INPROC, 0,0,0);
    FUNC1(MSHCTX_DIFFERENTMACHINE, MSHCTX_INPROC,0,0,0);
    FUNC1(MSHCTX_INPROC, FUNC0(MSHCTX_INPROC, 0xffff),0,0,0);

    /* All three are marshalled as remote */
    FUNC1(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,0,0,0);
    FUNC1(MSHCTX_DIFFERENTMACHINE, MSHCTX_DIFFERENTMACHINE,0,0,0);
    FUNC1(MSHCTX_INPROC, FUNC0(MSHCTX_DIFFERENTMACHINE, 0xffff),0,0,0);

    /* Test different combinations of client, in and out */
    FUNC1(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,0,0,1);
    FUNC1(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,0,1,0);
    FUNC1(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,0,1,1);
    FUNC1(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,1,0,0);
    FUNC1(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,1,0,1);
    FUNC1(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,1,1,0);
    FUNC1(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,1,1,1);
}