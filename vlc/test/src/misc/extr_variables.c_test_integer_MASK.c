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
struct TYPE_2__ {scalar_t__ i_int; } ;

/* Variables and functions */
 unsigned int VAR_COUNT ; 
 int /*<<< orphan*/  VLC_VAR_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * psz_var_name ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* var_value ; 

__attribute__((used)) static void FUNC8( libvlc_int_t *p_libvlc )
{
    for( unsigned i = 0; i < VAR_COUNT; i++ )
        FUNC2( p_libvlc, psz_var_name[i], VLC_VAR_INTEGER );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        var_value[i].i_int = FUNC1();
        FUNC7( p_libvlc, psz_var_name[i], var_value[i].i_int );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        FUNC0( FUNC5( p_libvlc, psz_var_name[i] ) == var_value[i].i_int );
        FUNC6( p_libvlc, psz_var_name[i] );
        FUNC0( FUNC5( p_libvlc, psz_var_name[i] ) == var_value[i].i_int + 1 );
        FUNC3( p_libvlc, psz_var_name[i] );
        FUNC0( FUNC5( p_libvlc, psz_var_name[i] ) == var_value[i].i_int );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        FUNC4( p_libvlc, psz_var_name[i] );
}