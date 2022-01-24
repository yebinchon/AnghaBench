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
typedef  int /*<<< orphan*/  ULONG ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
#define  MSHCTX_DIFFERENTMACHINE 131 
#define  MSHCTX_INPROC 130 
#define  MSHCTX_LOCAL 129 
#define  MSHCTX_NOSHAREDMEM 128 
 scalar_t__ NDR_LOCAL_DATA_REPRESENTATION ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(const ULONG *pFlags)
{
    if (FUNC0(*pFlags) == NDR_LOCAL_DATA_REPRESENTATION)
        FUNC2("MAKELONG(NDR_LOCAL_REPRESENTATION, ");
    else
        FUNC2("MAKELONG(0x%04x, ", FUNC0(*pFlags));
    switch (FUNC1(*pFlags))
    {
        case MSHCTX_LOCAL: FUNC2("MSHCTX_LOCAL)"); break;
        case MSHCTX_NOSHAREDMEM: FUNC2("MSHCTX_NOSHAREDMEM)"); break;
        case MSHCTX_DIFFERENTMACHINE: FUNC2("MSHCTX_DIFFERENTMACHINE)"); break;
        case MSHCTX_INPROC: FUNC2("MSHCTX_INPROC)"); break;
        default: FUNC2("%d)", FUNC1(*pFlags));
    }
}