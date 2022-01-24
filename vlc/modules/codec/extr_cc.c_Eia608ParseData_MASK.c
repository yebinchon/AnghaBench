#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_10__ {scalar_t__ mode; } ;
typedef  TYPE_1__ eia608_t ;
typedef  int /*<<< orphan*/  eia608_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EIA608_MODE_POPUP ; 
 int /*<<< orphan*/  EIA608_STATUS_CHANGED ; 
 int /*<<< orphan*/  EIA608_STATUS_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static eia608_status_t FUNC10( eia608_t *h, uint8_t d1, uint8_t d2 )
{
    eia608_status_t i_status = EIA608_STATUS_DEFAULT;

    if( d1 >= 0x18 && d1 <= 0x1f )
        d1 -= 8;

#define ON( d2min, d2max, cmd ) do { if( d2 >= d2min && d2 <= d2max ) i_status = cmd; } while(0)
    switch( d1 )
    {
    case 0x11:
        ON( 0x20, 0x2f, FUNC7( h, d2 ) );
        ON( 0x30, 0x3f, FUNC3( h, d2 ) );
        break;
    case 0x12: case 0x13:
        ON( 0x20, 0x3f, FUNC4( h, d1, d2 ) );
        break;
    case 0x14: case 0x15:
        ON( 0x20, 0x2f, FUNC1( h, d2 ) );
        break;
    case 0x17:
        ON( 0x21, 0x23, FUNC2( h, d2 ) );
        ON( 0x2e, 0x2f, FUNC7( h, d2 ) );
        break;
    }
    if( d1 == 0x10 )
        ON( 0x40, 0x5f, FUNC5( h, d1, d2 ) );
    else if( d1 >= 0x11 && d1 <= 0x17 )
        ON( 0x40, 0x7f, FUNC5( h, d1, d2 ) );
#undef ON
    if( d1 >= 0x20 )
    {
        FUNC0(FUNC9("\033[0;33m%c", d1));
        i_status = FUNC6( h, d1 );
        if( d2 >= 0x20 )
        {
            FUNC0(FUNC9("%c", d2));
            i_status |= FUNC6( h, d2 );
        }
        FUNC0(FUNC9("\033[0m"));
    }

    /* Ignore changes occuring to doublebuffer */
    if( h->mode == EIA608_MODE_POPUP && i_status == EIA608_STATUS_CHANGED )
        i_status = EIA608_STATUS_DEFAULT;

    return i_status;
}