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
struct TYPE_4__ {int /*<<< orphan*/  i_font_size; } ;
struct TYPE_5__ {TYPE_1__ fontstyle; int /*<<< orphan*/  i_id; } ;
typedef  TYPE_2__ commandparams_t ;

/* Variables and functions */
 scalar_t__ VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (char**,int /*<<< orphan*/ *) ; 
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
        if( FUNC2( &psz_command, &p_params->fontstyle.i_font_size ) == VLC_EGENERIC )
            return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}