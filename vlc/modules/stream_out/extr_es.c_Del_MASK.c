#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* p_sout; } ;
typedef  TYPE_2__ sout_stream_t ;
struct TYPE_11__ {TYPE_4__* p_mux; int /*<<< orphan*/  p_input; } ;
typedef  TYPE_3__ sout_stream_id_sys_t ;
typedef  int /*<<< orphan*/  sout_access_out_t ;
struct TYPE_12__ {int /*<<< orphan*/ * p_access; } ;
struct TYPE_9__ {int /*<<< orphan*/  i_out_pace_nocontrol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6( sout_stream_t *p_stream, void *_id )
{
    FUNC0(p_stream);
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;
    sout_access_out_t *p_access = id->p_mux->p_access;

    FUNC5( id->p_mux, id->p_input );
    FUNC4( id->p_mux );
    if( !FUNC2( p_access ) )
        p_stream->p_sout->i_out_pace_nocontrol--;
    FUNC3( p_access );

    FUNC1( id );
}