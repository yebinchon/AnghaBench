#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
struct TYPE_11__ {char const* psz_name; int /*<<< orphan*/  p_fonts; } ;
typedef  TYPE_1__ vlc_family_t ;
typedef  int /*<<< orphan*/  vlc_dictionary_t ;
struct TYPE_12__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_13__ {int /*<<< orphan*/  fallback_map; int /*<<< orphan*/  family_map; int /*<<< orphan*/  p_families; } ;
typedef  TYPE_3__ filter_sys_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FB_LIST_DEFAULT ; 
 int /*<<< orphan*/  FB_NAME ; 
 TYPE_1__* FUNC1 (TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
#define  XML_READER_ENDELEM 129 
#define  XML_READER_STARTELEM 128 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC10 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC11( filter_t *p_filter, xml_reader_t *p_xml )
{
    filter_sys_t     *p_sys       = p_filter->p_sys;
    vlc_dictionary_t *p_dict      = &p_sys->family_map;
    vlc_family_t     *p_family    = NULL;
    const char       *psz_val     = NULL;
    const char       *psz_attr    = NULL;
    const char       *psz_name    = NULL;
    int               i_type      = 0;

    while( ( psz_attr = FUNC9( p_xml, &psz_val ) ) )
    {
        if( !FUNC5( "name", psz_attr ) && psz_val && *psz_val )
        {
            psz_name = psz_val;
            break;
        }
    }

    if( psz_name && *psz_name )
    {
        /*
         * Family has a name. See if we have that name already.
         * If the name already exists, it's one of the font attachments.
         */
        char *psz_lc = FUNC2( psz_name );
        if( FUNC7( !psz_lc ) )
            return VLC_ENOMEM;

        p_family = FUNC8( p_dict, psz_lc );

        FUNC3( psz_lc );
    }

    if( p_family == NULL )
    {
        /*
         * We are either parsing a nameless family, or a named family that
         * was not previously added to p_sys->family_map.
         *
         * Create a new family with the given name or, if psz_name is NULL,
         * with the name fallback-xxxx
         */
        p_family = FUNC1( p_filter, psz_name, &p_sys->p_families,
                              &p_sys->family_map, NULL );

        if( FUNC7( !p_family ) )
            return VLC_ENOMEM;
    }

    while( ( i_type = FUNC10( p_xml, &psz_val ) ) > 0 )
    {
        switch( i_type )
        {
        case XML_READER_STARTELEM:
            if( !FUNC5( "font", psz_val ) )
                if( FUNC0( p_filter, p_xml, p_family ) == VLC_ENOMEM )
                    return VLC_ENOMEM;
            break;

        case XML_READER_ENDELEM:
            if( !FUNC5( "family", psz_val ) )
            {
                if( FUNC6( p_family->psz_name, FB_NAME ) )
                {
                    /*
                     * If the family name has "fallback" in it add it to the
                     * default fallback list.
                     */
                    vlc_family_t *p_fallback =
                        FUNC1( p_filter, p_family->psz_name,
                                   NULL, &p_sys->fallback_map, FB_LIST_DEFAULT );

                    if( FUNC7( !p_fallback ) )
                        return VLC_ENOMEM;

                    p_fallback->p_fonts = p_family->p_fonts;
                }

                return VLC_SUCCESS;
            }
            break;
        }
    }

    FUNC4( p_filter, "Android_ParseFamily: Corrupt font configuration file" );
    return VLC_EGENERIC;
}