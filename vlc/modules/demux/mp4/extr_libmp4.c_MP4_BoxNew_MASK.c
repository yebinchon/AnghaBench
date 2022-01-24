#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_type; } ;
typedef  TYPE_1__ MP4_Box_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

MP4_Box_t * FUNC2( uint32_t i_type )
{
    MP4_Box_t *p_box = FUNC0( 1, sizeof( MP4_Box_t ) );
    if( FUNC1( p_box != NULL ) )
    {
        p_box->i_type = i_type;
    }
    return p_box;
}