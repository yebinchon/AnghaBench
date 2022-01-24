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
typedef  int /*<<< orphan*/  sout_stream_t ;
struct TYPE_4__ {int /*<<< orphan*/  pf_write; int /*<<< orphan*/ * pf_seek; int /*<<< orphan*/ * p_sys; void* psz_path; int /*<<< orphan*/ * p_cfg; void* psz_access; int /*<<< orphan*/ * p_module; } ;
typedef  TYPE_1__ sout_access_out_t ;

/* Variables and functions */
 int /*<<< orphan*/  AccessOutGrabberWrite ; 
 void* FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static sout_access_out_t *FUNC2( sout_stream_t *p_stream )
{
    sout_access_out_t *p_grab;

    p_grab = FUNC1( p_stream, sizeof( *p_grab ) );
    if( p_grab == NULL )
        return NULL;

    p_grab->p_module    = NULL;
    p_grab->psz_access  = FUNC0( "grab" );
    p_grab->p_cfg       = NULL;
    p_grab->psz_path    = FUNC0( "" );
    p_grab->p_sys       = p_stream;
    p_grab->pf_seek     = NULL;
    p_grab->pf_write    = AccessOutGrabberWrite;
    return p_grab;
}