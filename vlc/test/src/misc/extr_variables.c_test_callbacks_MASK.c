#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_int_t ;
struct TYPE_2__ {int i_int; } ;

/* Variables and functions */
 unsigned int VAR_COUNT ; 
 int /*<<< orphan*/  VLC_VAR_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  callback ; 
 int /*<<< orphan*/ * psz_var_name ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* var_value ; 

__attribute__((used)) static void FUNC7( libvlc_int_t *p_libvlc )
{
    /* add the callbacks */
    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        FUNC3( p_libvlc, psz_var_name[i], VLC_VAR_INTEGER );
        FUNC2( p_libvlc, psz_var_name[i], callback, psz_var_name );
    }

    /* Set the variables and trigger the callbacks */
    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        int i_temp = FUNC1();
        FUNC5( p_libvlc, psz_var_name[i], i_temp );
        FUNC0( i_temp == var_value[i].i_int );
        FUNC5( p_libvlc, psz_var_name[i], 0 );
        FUNC0( var_value[i].i_int == 0 );
        var_value[i].i_int = 1;
    }

    /* Only trigger the callback: the value will be 0 again */
    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        FUNC6( p_libvlc, psz_var_name[i] );
        FUNC0( var_value[i].i_int == 0 );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        FUNC4( p_libvlc, psz_var_name[i] );
}