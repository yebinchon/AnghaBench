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
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ VLC_SUCCESS ; 

__attribute__((used)) static void *FUNC3( void *opaque )
{
    demux_t *p_demux = opaque;

    if( FUNC2( p_demux ) != VLC_SUCCESS )
        return NULL;

    while( FUNC0( p_demux ) == VLC_SUCCESS );

    FUNC1( p_demux );
    return NULL;
}