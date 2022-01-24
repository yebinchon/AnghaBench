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
typedef  int int32_t ;
struct TYPE_3__ {int i_id; int b_visible; } ;
typedef  TYPE_1__ commandparams_t ;

/* Variables and functions */
 scalar_t__ VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (char**,int*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 

__attribute__((used)) static int FUNC4( char *psz_command, char *psz_end,
                                 commandparams_t *p_params )
{
    FUNC0(psz_end);
    FUNC3( &psz_command );
    if( FUNC1( (unsigned char)*psz_command ) )
    {
        if( FUNC2( &psz_command, &p_params->i_id ) == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    FUNC3( &psz_command );
    if( FUNC1( (unsigned char)*psz_command ) )
    {
        int32_t i_vis = 0;
        if( FUNC2( &psz_command, &i_vis ) == VLC_EGENERIC )
            return VLC_EGENERIC;
        p_params->b_visible = (i_vis == 1) ? true : false;
    }
    return VLC_SUCCESS;
}