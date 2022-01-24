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
typedef  int /*<<< orphan*/  lb ;
struct TYPE_3__ {int lbColor; int lbStyle; int lbHatch; } ;
typedef  TYPE_1__ LOGBRUSH ;
typedef  scalar_t__ HBRUSH ;

/* Variables and functions */
 int BS_HATCHED ; 
 int BS_SOLID ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 () ; 
 int FUNC3 (scalar_t__,int,TYPE_1__*) ; 
 int HS_API_MAX ; 
 int HS_DIAGCROSS ; 
 int FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC7(void)
{
    int i, size;
    HBRUSH brush;
    LOGBRUSH lb;

    for (i = 0; i < 20; i++)
    {
        FUNC5( 0xdeadbeef );
        brush = FUNC0( i, FUNC4(12,34,56) );
        if (i < HS_API_MAX)
        {
            FUNC6( brush != 0, "%u: CreateHatchBrush failed err %u\n", i, FUNC2() );
            size = FUNC3( brush, sizeof(lb), &lb );
            FUNC6( size == sizeof(lb), "wrong size %u\n", size );
            FUNC6( lb.lbColor == FUNC4(12,34,56), "wrong color %08x\n", lb.lbColor );
            if (i <= HS_DIAGCROSS)
            {
                FUNC6( lb.lbStyle == BS_HATCHED, "wrong style %u\n", lb.lbStyle );
                FUNC6( lb.lbHatch == i, "wrong hatch %lu/%u\n", lb.lbHatch, i );
            }
            else
            {
                FUNC6( lb.lbStyle == BS_SOLID, "wrong style %u\n", lb.lbStyle );
                FUNC6( lb.lbHatch == 0, "wrong hatch %lu\n", lb.lbHatch );
            }
            FUNC1( brush );
        }
        else
        {
            FUNC6( !brush, "%u: CreateHatchBrush succeeded\n", i );
            FUNC6( FUNC2() == 0xdeadbeef, "wrong error %u\n", FUNC2() );
        }
    }
}