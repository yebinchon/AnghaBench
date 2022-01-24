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
typedef  int /*<<< orphan*/  const vlc_family_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_5__ {int /*<<< orphan*/  family_map; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  const* kVLCDictionaryNotFound ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *,char*) ; 

const vlc_family_t *FUNC4( filter_t *p_filter, const char *psz_family )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    char *psz_lc = FUNC0( psz_family );
    if( FUNC2( !psz_lc ) )
        return NULL;

    vlc_family_t *p_family =
            FUNC3( &p_sys->family_map, psz_lc );

    FUNC1( psz_lc );

    if( p_family == kVLCDictionaryNotFound )
        return NULL;

    return p_family;
}