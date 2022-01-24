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
struct TYPE_3__ {int /*<<< orphan*/  p_sys; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4( stream_t* p_demux, char const* psz_tag )
{
    char* psz_copy = FUNC3( psz_tag );
    int ret = VLC_ENOMEM;

    if( FUNC2( psz_copy ) )
        ret = FUNC0( p_demux->p_sys, psz_copy );

    FUNC1( psz_copy );
    return ret;
}