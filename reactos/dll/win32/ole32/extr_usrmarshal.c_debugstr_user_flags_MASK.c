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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  MSHCTX_DIFFERENTMACHINE 131 
#define  MSHCTX_INPROC 130 
#define  MSHCTX_LOCAL 129 
#define  MSHCTX_NOSHAREDMEM 128 
 scalar_t__ NDR_LOCAL_DATA_REPRESENTATION ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char const* FUNC3 (char*,char const*,...) ; 

__attribute__((used)) static const char* FUNC4(ULONG *pFlags)
{
    char buf[12];
    const char* loword;
    switch (FUNC1(*pFlags))
    {
    case MSHCTX_LOCAL:
        loword="MSHCTX_LOCAL";
        break;
    case MSHCTX_NOSHAREDMEM:
        loword="MSHCTX_NOSHAREDMEM";
        break;
    case MSHCTX_DIFFERENTMACHINE:
        loword="MSHCTX_DIFFERENTMACHINE";
        break;
    case MSHCTX_INPROC:
        loword="MSHCTX_INPROC";
        break;
    default:
        FUNC2(buf, "%d", FUNC1(*pFlags));
        loword=buf;
    }

    if (FUNC0(*pFlags) == NDR_LOCAL_DATA_REPRESENTATION)
        return FUNC3("MAKELONG(%s, NDR_LOCAL_DATA_REPRESENTATION)", loword);
    else
        return FUNC3("MAKELONG(%s, 0x%04x)", loword, FUNC0(*pFlags));
}