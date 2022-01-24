#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  p_access; } ;
typedef  TYPE_1__ sout_mux_t ;
typedef  int /*<<< orphan*/  sout_input_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( sout_mux_t *p_mux, sout_input_t *p_input )
{
    FUNC1(p_input);
    FUNC2( p_mux, "removing input" );

    FUNC2( p_mux, "writing header data" );
    if( FUNC3( p_mux->p_access, 0 ) == VLC_SUCCESS )
    {
        FUNC4( p_mux->p_access, FUNC0( p_mux ) );
    }
}