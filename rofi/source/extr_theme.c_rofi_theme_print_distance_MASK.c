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
struct TYPE_3__ {scalar_t__ type; scalar_t__ style; scalar_t__ distance; } ;
typedef  TYPE_1__ RofiDistance ;

/* Variables and functions */
 scalar_t__ ROFI_HL_DASH ; 
 scalar_t__ ROFI_PU_CH ; 
 scalar_t__ ROFI_PU_PERCENT ; 
 scalar_t__ ROFI_PU_PX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3 ( RofiDistance d )
{
    if ( d.type == ROFI_PU_PX ) {
        FUNC1 ( "%upx ", (unsigned int) d.distance );
    }
    else if ( d.type == ROFI_PU_PERCENT ) {
        FUNC2 ( d.distance );
        FUNC0 ( "%% ", stdout );
    }
    else if ( d.type == ROFI_PU_CH ) {
        FUNC2 ( d.distance );
        FUNC0 ( "ch ", stdout );
    }
    else {
        FUNC2 ( d.distance );
        FUNC0 ( "em ", stdout );
    }
    if ( d.style == ROFI_HL_DASH ) {
        FUNC1 ( "dash " );
    }
}