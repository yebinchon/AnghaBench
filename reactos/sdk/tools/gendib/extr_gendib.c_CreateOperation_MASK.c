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
struct TYPE_3__ {scalar_t__ RopCode; char* Operation; } ;
typedef  TYPE_1__* PROPINFO ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ ROPCODE_GENERIC ; 

__attribute__((used)) static void
FUNC2(FILE *Out, unsigned Bpp, PROPINFO RopInfo, unsigned SourceBpp,
                unsigned Bits)
{
    const char *Cast;
    const char *Dest;
    const char *Template;

    FUNC0(Out);
    if (32 == Bits)
    {
        Cast = "";
        Dest = "*DestPtr";
    }
    else if (16 == Bpp)
    {
        Cast = "(USHORT) ";
        Dest = "*((PUSHORT) DestPtr)";
    }
    else
    {
        Cast = "(UCHAR) ";
        Dest = "*((PUCHAR) DestPtr)";
    }
    FUNC1(Out, "%s = ", Dest);
    if (ROPCODE_GENERIC == RopInfo->RopCode)
    {
        FUNC1(Out, "%sDIB_DoRop(BltInfo->Rop4, %s, Source, Pattern)",
               Cast, Dest);
    }
    else
    {
        Template = RopInfo->Operation;
        while ('\0' != *Template)
        {
            switch(*Template)
            {
            case 'S':
                FUNC1(Out, "%sSource", Cast);
                break;
            case 'P':
                FUNC1(Out, "%sPattern", Cast);
                break;
            case 'D':
                FUNC1(Out, "%s", Dest);
                break;
            default:
                FUNC1(Out, "%c", *Template);
                break;
            }
            Template++;
        }
    }
}