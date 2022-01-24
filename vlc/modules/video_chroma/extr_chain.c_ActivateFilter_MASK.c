#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {int /*<<< orphan*/ * psz_name; int /*<<< orphan*/  b_allow_fmt_out_change; } ;
typedef  TYPE_1__ filter_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BuildFilterChain ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  VLC_VAR_INTEGER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;

    if( !p_filter->b_allow_fmt_out_change || p_filter->psz_name == NULL )
        return VLC_EGENERIC;

    if( FUNC3( FUNC4(p_filter), "chain-filter-level" ) != 0 )
        return VLC_EGENERIC;

    FUNC1( p_filter, "chain-filter-level", VLC_VAR_INTEGER );
    int i_ret = FUNC0( p_filter, BuildFilterChain );
    FUNC2( p_filter, "chain-filter-level" );

    return i_ret;
}