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
struct TYPE_3__ {scalar_t__ type; int distance; } ;
typedef  scalar_t__ RofiOrientation ;
typedef  TYPE_1__ RofiDistance ;

/* Variables and functions */
 scalar_t__ ROFI_ORIENTATION_VERTICAL ; 
 scalar_t__ ROFI_PU_CH ; 
 scalar_t__ ROFI_PU_EM ; 
 scalar_t__ ROFI_PU_PERCENT ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 

int FUNC3 ( RofiDistance d, RofiOrientation ori )
{
    if ( d.type == ROFI_PU_EM ) {
        return d.distance * FUNC2 ();
    }
    else if ( d.type == ROFI_PU_CH ) {
        return d.distance * FUNC1 ();
    }
    else if ( d.type == ROFI_PU_PERCENT ) {
        if ( ori == ROFI_ORIENTATION_VERTICAL ) {
            int height = 0;
            FUNC0 ( NULL, &height );
            return ( d.distance * height ) / ( 100.0 );
        }
        else {
            int width = 0;
            FUNC0 ( &width, NULL );
            return ( d.distance * width ) / ( 100.0 );
        }
    }
    return d.distance;
}