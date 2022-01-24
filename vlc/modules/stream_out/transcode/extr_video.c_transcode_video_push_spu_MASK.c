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
typedef  int /*<<< orphan*/  subpicture_t ;
typedef  int /*<<< orphan*/  sout_stream_t ;
struct TYPE_3__ {scalar_t__ p_spu; } ;
typedef  TYPE_1__ sout_stream_id_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3( sout_stream_t *p_stream, sout_stream_id_sys_t *id,
                               subpicture_t *p_subpicture )
{
    if( !id->p_spu )
        id->p_spu = FUNC0( p_stream, NULL );
    if( !id->p_spu )
        FUNC2( p_subpicture );
    else
        FUNC1( id->p_spu, p_subpicture );
}