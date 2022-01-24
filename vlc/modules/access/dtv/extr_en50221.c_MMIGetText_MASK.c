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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ cam_t ;

/* Variables and functions */
 int AOT_TEXT_LAST ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char *FUNC5( cam_t *p_cam, uint8_t **pp_apdu, int *pi_size )
{
    int i_tag = FUNC1( *pp_apdu, *pi_size );
    int l;
    uint8_t *d;

    if ( i_tag != AOT_TEXT_LAST )
    {
        FUNC2( p_cam->obj, "unexpected text tag: %06x", i_tag );
        *pi_size = 0;
        return FUNC3( "" );
    }

    d = FUNC0( *pp_apdu, &l );

    *pp_apdu += l + 4;
    *pi_size -= l + 4;

    return FUNC4(d,l);
}