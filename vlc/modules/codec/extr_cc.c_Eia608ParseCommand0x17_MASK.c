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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static bool FUNC3( eia608_t *h, uint8_t d2 )
{
    switch( d2 )
    {
    case 0x21:  /* Tab offset 1 */
    case 0x22:  /* Tab offset 2 */
    case 0x23:  /* Tab offset 3 */
        FUNC0(FUNC2("[TO%d]", d2 - 0x20));
        FUNC1( h, d2 - 0x20 );
        break;
    }
    return false;
}