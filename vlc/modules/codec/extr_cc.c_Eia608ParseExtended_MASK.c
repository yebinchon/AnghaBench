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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  eia608_t ;
typedef  int /*<<< orphan*/  eia608_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIA608_STATUS_CHANGED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static eia608_status_t FUNC5( eia608_t *h, uint8_t d1, uint8_t d2 )
{
    FUNC3( d2 >= 0x20 && d2 <= 0x3f );
    FUNC3( d1 == 0x12 || d1 == 0x13 );
    if( d1 == 0x12 )
        d2 += 0x70; /* We use charaters 0x90-0xaf */
    else
        d2 += 0x90; /* We use charaters 0xb0-0xcf */

    FUNC0(FUNC4("[EXT %x->'%c']", d2, d2));
    /* The extended characters replace the previous one with a more
     * advanced one */
    FUNC1( h, -1 );
    FUNC2( h, d2 );
    return EIA608_STATUS_CHANGED;
}