#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
struct TYPE_12__ {char* psz_name; int /*<<< orphan*/  p_fonts; } ;
typedef  TYPE_1__ vlc_family_t ;
typedef  int /*<<< orphan*/  vlc_dictionary_t ;
struct TYPE_13__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_14__ {int /*<<< orphan*/  fallback_map; int /*<<< orphan*/  family_map; int /*<<< orphan*/  p_families; } ;
typedef  TYPE_3__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  ANDROID_FONT_PATH ; 
 int /*<<< orphan*/ * FB_LIST_DEFAULT ; 
 int /*<<< orphan*/  FB_NAME ; 
 TYPE_1__* FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,TYPE_1__*) ; 
 char* FUNC2 (char const*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
#define  XML_READER_ENDELEM 129 
#define  XML_READER_STARTELEM 128 
 int XML_READER_TEXT ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* kVLCDictionaryNotFound ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC12( filter_t *p_filter, xml_reader_t *p_xml )
{
    filter_sys_t     *p_sys       = p_filter->p_sys;
    vlc_dictionary_t *p_dict      = &p_sys->family_map;
    vlc_family_t     *p_family    = NULL;
    char             *psz_lc      = NULL;
    int               i_counter   = 0;
    bool              b_bold      = false;
    bool              b_italic    = false;
    const char       *p_node      = NULL;
    int               i_type      = 0;

    while( ( i_type = FUNC11( p_xml, &p_node ) ) > 0 )
    {
        switch( i_type )
        {
        case XML_READER_STARTELEM:
            /*
             * Multiple names can reference the same family in Android. When
             * the first name is encountered we set p_family to the vlc_family_t
             * in the master list matching this name, and if no such family
             * exists we create a new one and add it to the master list.
             * If the master list does contain a family with that name it's one
             * of the font attachments, and the family will end up having embedded
             * fonts and system fonts.
             */
            if( !FUNC6( "name", p_node ) )
            {
                i_type = FUNC11( p_xml, &p_node );

                if( i_type != XML_READER_TEXT || !p_node || !*p_node )
                {
                    FUNC5( p_filter, "Android_ParseFamily: empty name" );
                    continue;
                }

                psz_lc = FUNC2( p_node );
                if( FUNC8( !psz_lc ) )
                    return VLC_ENOMEM;

                if( !p_family )
                {
                    p_family = FUNC10( p_dict, psz_lc );
                    if( p_family == kVLCDictionaryNotFound )
                    {
                        p_family =
                            FUNC0( p_filter, psz_lc, &p_sys->p_families, NULL, NULL );

                        if( FUNC8( !p_family ) )
                        {
                            FUNC4( psz_lc );
                            return VLC_ENOMEM;
                        }

                    }
                }

                if( FUNC10( p_dict, psz_lc ) == kVLCDictionaryNotFound )
                    FUNC9( p_dict, psz_lc, p_family );
                FUNC4( psz_lc );
            }
            /*
             * If p_family has not been set by the time we encounter the first file,
             * it means this family has no name, and should be used only as a fallback.
             * We create a new family for it in the master list with the name "fallback-xxxx"
             * and later add it to the "default" fallback list.
             */
            else if( !FUNC6( "file", p_node ) )
            {
                i_type = FUNC11( p_xml, &p_node );

                if( i_type != XML_READER_TEXT || !p_node || !*p_node )
                {
                    ++i_counter;
                    continue;
                }

                if( !p_family )
                    p_family = FUNC0( p_filter, NULL, &p_sys->p_families,
                                          &p_sys->family_map, NULL );

                if( FUNC8( !p_family ) )
                    return VLC_ENOMEM;

                switch( i_counter )
                {
                case 0:
                    b_bold = false;
                    b_italic = false;
                    break;
                case 1:
                    b_bold = true;
                    b_italic = false;
                    break;
                case 2:
                    b_bold = false;
                    b_italic = true;
                    break;
                case 3:
                    b_bold = true;
                    b_italic = true;
                    break;
                default:
                    FUNC5( p_filter, "Android_ParseFamily: too many files" );
                    return VLC_EGENERIC;
                }

                char *psz_fontfile = NULL;
                if( FUNC3( &psz_fontfile, "%d/%s", ANDROID_FONT_PATH, p_node ) < 0
                 || !FUNC1( psz_fontfile, 0, b_bold, b_italic, p_family ) )
                    return VLC_ENOMEM;

                ++i_counter;
            }
            break;

        case XML_READER_ENDELEM:
            if( !FUNC6( "family", p_node ) )
            {
                if( !p_family )
                {
                    FUNC5( p_filter, "Android_ParseFamily: empty family" );
                    return VLC_EGENERIC;
                }

                /*
                 * If the family name has "fallback" in it, add it to the
                 * "default" fallback list.
                 */
                if( FUNC7( p_family->psz_name, FB_NAME ) )
                {
                    vlc_family_t *p_fallback =
                        FUNC0( p_filter, p_family->psz_name,
                                   NULL, &p_sys->fallback_map, FB_LIST_DEFAULT );

                    if( FUNC8( !p_fallback ) )
                        return VLC_ENOMEM;

                    p_fallback->p_fonts = p_family->p_fonts;
                }

                return VLC_SUCCESS;
            }
            break;
        }
    }

    FUNC5( p_filter, "Android_ParseOldFamily: Corrupt font configuration file" );
    return VLC_EGENERIC;
}