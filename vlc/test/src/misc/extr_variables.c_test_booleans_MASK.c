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
struct TYPE_2__ {int b_bool; } ;

/* Variables and functions */
 int RAND_MAX ; 
 unsigned int VAR_COUNT ; 
 int /*<<< orphan*/  VLC_VAR_BOOL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * psz_var_name ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* var_value ; 

__attribute__((used)) static void FUNC7( libvlc_int_t *p_libvlc )
{
    for( unsigned i = 0; i < VAR_COUNT; i++ )
        FUNC2( p_libvlc, psz_var_name[i], VLC_VAR_BOOL );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        var_value[i].b_bool = (FUNC1() > RAND_MAX/2);
        FUNC5( p_libvlc, psz_var_name[i], var_value[i].b_bool );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        FUNC0( FUNC4( p_libvlc, psz_var_name[i] ) == var_value[i].b_bool );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        FUNC6( p_libvlc, psz_var_name[i] );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        FUNC0( FUNC4( p_libvlc, psz_var_name[i] ) != var_value[i].b_bool );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        FUNC3( p_libvlc, psz_var_name[i] );
}