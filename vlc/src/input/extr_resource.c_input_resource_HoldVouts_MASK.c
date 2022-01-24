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
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_3__ {size_t i_vout; int /*<<< orphan*/  lock_hold; int /*<<< orphan*/ ** pp_vout; } ;
typedef  TYPE_1__ input_resource_t ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4( input_resource_t *p_resource, vout_thread_t ***ppp_vout,
                               size_t *pi_vout )
{
    vout_thread_t **pp_vout;

    *pi_vout = 0;
    *ppp_vout = NULL;

    FUNC1( &p_resource->lock_hold );

    if( p_resource->i_vout <= 0 )
        goto exit;

    pp_vout = FUNC0( p_resource->i_vout, sizeof(*pp_vout) );
    if( !pp_vout )
        goto exit;

    *ppp_vout = pp_vout;
    *pi_vout = p_resource->i_vout;

    for( int i = 0; i < p_resource->i_vout; i++ )
    {
        pp_vout[i] = p_resource->pp_vout[i];
        FUNC3(pp_vout[i]);
    }

exit:
    FUNC2( &p_resource->lock_hold );
}