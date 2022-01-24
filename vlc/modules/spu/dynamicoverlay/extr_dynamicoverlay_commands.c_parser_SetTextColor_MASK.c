#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int i_font_color; } ;
struct TYPE_5__ {int i_id; TYPE_1__ fontstyle; } ;
typedef  TYPE_2__ commandparams_t ;

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
    int r = 0, g = 0, b = 0;
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
        if( FUNC2( &psz_command, &r ) == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    FUNC3( &psz_command );
    if( FUNC1( (unsigned char)*psz_command ) )
    {
        if( FUNC2( &psz_command, &g ) == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    FUNC3( &psz_command );
    if( FUNC1( (unsigned char)*psz_command ) )
    {
        if( FUNC2( &psz_command, &b ) == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    p_params->fontstyle.i_font_color = (r<<16) | (g<<8) | (b<<0);
    return VLC_SUCCESS;
}