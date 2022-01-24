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
typedef  int /*<<< orphan*/  xml_reader_t ;
typedef  int /*<<< orphan*/  vlc_family_t ;
typedef  int /*<<< orphan*/  vlc_dictionary_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_5__ {int /*<<< orphan*/  family_map; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC7( filter_t *p_filter, xml_reader_t *p_xml )
{
    filter_sys_t     *p_sys       = p_filter->p_sys;
    vlc_dictionary_t *p_dict      = &p_sys->family_map;
    vlc_family_t     *p_dest      = NULL;
    char             *psz_name    = NULL;
    char             *psz_dest    = NULL;
    const char       *psz_val     = NULL;
    const char       *psz_attr    = NULL;
    int               i_weight    = 0;
    int               i_ret       = VLC_SUCCESS;

    while( ( psz_attr = FUNC6( p_xml, &psz_val ) ) )
    {
        if( !FUNC3( "weight", psz_attr ) && psz_val && *psz_val )
            i_weight = FUNC1( psz_val );
        else if( !FUNC3( "to", psz_attr ) && psz_val && *psz_val )
            psz_dest = FUNC0( psz_val );
        else if( !FUNC3( "name", psz_attr ) && psz_val && *psz_val )
            psz_name = FUNC0( psz_val );
    }

    if( !psz_dest || !psz_name )
    {
        i_ret = VLC_EGENERIC;
        goto done;
    }

    p_dest = FUNC5( p_dict, psz_dest );

    if( p_dest && i_weight == 0 )
        if( FUNC5( p_dict, psz_name ) == NULL )
            FUNC4( p_dict, psz_name, p_dest );

done:
    FUNC2( psz_dest );
    FUNC2( psz_name );
    return i_ret;
}