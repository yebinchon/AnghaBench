#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  p_cfg; int /*<<< orphan*/  psz_name; int /*<<< orphan*/ * p_module; scalar_t__ pace_nocontrol; } ;
typedef  TYPE_1__ sout_stream_t ;
struct TYPE_9__ {int /*<<< orphan*/  i_out_pace_nocontrol; } ;
typedef  TYPE_2__ sout_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6( sout_stream_t *p_stream )
{
    sout_instance_t *p_sout = (sout_instance_t *)FUNC5(p_stream);

    FUNC3( p_stream, "destroying chain... (name=%s)", p_stream->psz_name );

    p_sout->i_out_pace_nocontrol -= p_stream->pace_nocontrol;

    if( p_stream->p_module != NULL )
        FUNC2( p_stream, p_stream->p_module );

    FUNC0( p_stream->psz_name );

    FUNC1( p_stream->p_cfg );

    FUNC3( p_stream, "destroying chain done" );
    FUNC4(p_stream);
}