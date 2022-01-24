#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  i_int; int /*<<< orphan*/  psz_string; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_repeat; int /*<<< orphan*/  i_alpha; } ;
typedef  TYPE_2__ logo_list_t ;
struct TYPE_11__ {int b_spu_update; int /*<<< orphan*/  lock; int /*<<< orphan*/  i_pos; int /*<<< orphan*/  i_pos_y; int /*<<< orphan*/  i_pos_x; TYPE_2__ list; } ;
typedef  TYPE_3__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7( vlc_object_t *p_this, char const *psz_var,
                         vlc_value_t oldval, vlc_value_t newval, void *p_data )
{
    FUNC3(oldval);
    filter_sys_t *p_sys = (filter_sys_t *)p_data;
    logo_list_t *p_list = &p_sys->list;

    FUNC5( &p_sys->lock );
    if( !FUNC4( psz_var, "logo-file" ) )
    {
        FUNC1( p_list );
        FUNC0( p_this, p_list, newval.psz_string );
    }
    else if ( !FUNC4( psz_var, "logo-x" ) )
    {
        p_sys->i_pos_x = newval.i_int;
    }
    else if ( !FUNC4( psz_var, "logo-y" ) )
    {
        p_sys->i_pos_y = newval.i_int;
    }
    else if ( !FUNC4( psz_var, "logo-position" ) )
    {
        p_sys->i_pos = newval.i_int;
    }
    else if ( !FUNC4( psz_var, "logo-opacity" ) )
    {
        p_list->i_alpha = FUNC2( newval.i_int, 0, 255 );
    }
    else if ( !FUNC4( psz_var, "logo-repeat" ) )
    {
        p_list->i_repeat = newval.i_int;
    }
    p_sys->b_spu_update = true;
    FUNC6( &p_sys->lock );

    return VLC_SUCCESS;
}