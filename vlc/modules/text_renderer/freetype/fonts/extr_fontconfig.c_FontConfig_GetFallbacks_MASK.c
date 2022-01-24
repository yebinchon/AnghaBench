#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {char* psz_name; } ;
typedef  TYPE_2__ vlc_family_t ;
typedef  int /*<<< orphan*/  uni_char_t ;
struct TYPE_21__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ filter_t ;
struct TYPE_22__ {int /*<<< orphan*/  fallback_map; } ;
typedef  TYPE_4__ filter_sys_t ;
struct TYPE_24__ {int nfont; int /*<<< orphan*/ * fonts; } ;
struct TYPE_19__ {int /*<<< orphan*/  const* s; } ;
struct TYPE_23__ {TYPE_1__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_5__ FcValue ;
typedef  int /*<<< orphan*/  FcResult ;
typedef  int /*<<< orphan*/  FcPattern ;
typedef  TYPE_6__ FcFontSet ;
typedef  int /*<<< orphan*/  FcChar8 ;

/* Variables and functions */
 int /*<<< orphan*/  FC_FAMILY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FcFalse ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FcMatchPattern ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FcTrue ; 
 int /*<<< orphan*/  FcTypeString ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (TYPE_3__*,char*,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 TYPE_2__* kVLCDictionaryNotFound ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ *,char*) ; 

vlc_family_t *FUNC17( filter_t *p_filter, const char *psz_family,
                                       uni_char_t codepoint )
{

    FUNC11( codepoint );

    vlc_family_t *p_family = NULL;
    filter_sys_t *p_sys    = p_filter->p_sys;

    char *psz_lc = FUNC10( psz_family );

    if( FUNC14( !psz_lc ) )
        return NULL;

    p_family = FUNC16( &p_sys->fallback_map, psz_lc );

    if( p_family != kVLCDictionaryNotFound )
    {
        FUNC12( psz_lc );
        return p_family;
    }
    else
        p_family = NULL;

    const char *psz_last_name = "";
    FcPattern  *p_pattern = FUNC5();
    FcValue     family;
    family.type = FcTypeString;
    family.u.s = ( const FcChar8* ) psz_family;
    FUNC4( p_pattern, FC_FAMILY, family, FcFalse );
    if( FUNC0( config, p_pattern, FcMatchPattern ) == FcTrue )
    {
        FUNC1( p_pattern );
        FcResult result;
        FcFontSet* p_font_set = FUNC3( config, p_pattern, FcTrue, NULL, &result );
        if( p_font_set )
        {
            for( int i = 0; i < p_font_set->nfont; ++i )
            {
                char* psz_name = NULL;
                FUNC7( p_font_set->fonts[i],
                                    FC_FAMILY, 0, ( FcChar8** )( &psz_name ) );

                /* Avoid duplicate family names */
                if( FUNC13( psz_last_name, psz_name ) )
                {
                    vlc_family_t *p_temp = FUNC9( p_filter, psz_name,
                                                      &p_family, NULL, NULL );

                    if( FUNC14( !p_temp ) )
                    {
                        FUNC2( p_font_set );
                        FUNC6( p_pattern );
                        if( p_family )
                            FUNC8( p_family, NULL );
                        FUNC12( psz_lc );
                        return NULL;
                    }

                    psz_last_name = p_temp->psz_name;
                }
            }
            FUNC2( p_font_set );
        }
    }
    FUNC6( p_pattern );

    if( p_family )
        FUNC15( &p_sys->fallback_map, psz_lc, p_family );

    FUNC12( psz_lc );
    return p_family;
}