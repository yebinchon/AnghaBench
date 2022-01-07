
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {char* psz_name; } ;
typedef TYPE_2__ vlc_family_t ;
typedef int uni_char_t ;
struct TYPE_21__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_22__ {int fallback_map; } ;
typedef TYPE_4__ filter_sys_t ;
struct TYPE_24__ {int nfont; int * fonts; } ;
struct TYPE_19__ {int const* s; } ;
struct TYPE_23__ {TYPE_1__ u; int type; } ;
typedef TYPE_5__ FcValue ;
typedef int FcResult ;
typedef int FcPattern ;
typedef TYPE_6__ FcFontSet ;
typedef int FcChar8 ;


 int FC_FAMILY ;
 scalar_t__ FcConfigSubstitute (int ,int *,int ) ;
 int FcDefaultSubstitute (int *) ;
 int FcFalse ;
 int FcFontSetDestroy (TYPE_6__*) ;
 TYPE_6__* FcFontSort (int ,int *,scalar_t__,int *,int *) ;
 int FcMatchPattern ;
 int FcPatternAdd (int *,int ,TYPE_5__,int ) ;
 int * FcPatternCreate () ;
 int FcPatternDestroy (int *) ;
 int FcPatternGetString (int ,int ,int ,int **) ;
 scalar_t__ FcTrue ;
 int FcTypeString ;
 int FreeFamilies (TYPE_2__*,int *) ;
 TYPE_2__* NewFamily (TYPE_3__*,char*,TYPE_2__**,int *,int *) ;
 char* ToLower (char const*) ;
 int VLC_UNUSED (int ) ;
 int config ;
 int free (char*) ;
 TYPE_2__* kVLCDictionaryNotFound ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ unlikely (int) ;
 int vlc_dictionary_insert (int *,char*,TYPE_2__*) ;
 TYPE_2__* vlc_dictionary_value_for_key (int *,char*) ;

vlc_family_t *FontConfig_GetFallbacks( filter_t *p_filter, const char *psz_family,
                                       uni_char_t codepoint )
{

    VLC_UNUSED( codepoint );

    vlc_family_t *p_family = ((void*)0);
    filter_sys_t *p_sys = p_filter->p_sys;

    char *psz_lc = ToLower( psz_family );

    if( unlikely( !psz_lc ) )
        return ((void*)0);

    p_family = vlc_dictionary_value_for_key( &p_sys->fallback_map, psz_lc );

    if( p_family != kVLCDictionaryNotFound )
    {
        free( psz_lc );
        return p_family;
    }
    else
        p_family = ((void*)0);

    const char *psz_last_name = "";
    FcPattern *p_pattern = FcPatternCreate();
    FcValue family;
    family.type = FcTypeString;
    family.u.s = ( const FcChar8* ) psz_family;
    FcPatternAdd( p_pattern, FC_FAMILY, family, FcFalse );
    if( FcConfigSubstitute( config, p_pattern, FcMatchPattern ) == FcTrue )
    {
        FcDefaultSubstitute( p_pattern );
        FcResult result;
        FcFontSet* p_font_set = FcFontSort( config, p_pattern, FcTrue, ((void*)0), &result );
        if( p_font_set )
        {
            for( int i = 0; i < p_font_set->nfont; ++i )
            {
                char* psz_name = ((void*)0);
                FcPatternGetString( p_font_set->fonts[i],
                                    FC_FAMILY, 0, ( FcChar8** )( &psz_name ) );


                if( strcasecmp( psz_last_name, psz_name ) )
                {
                    vlc_family_t *p_temp = NewFamily( p_filter, psz_name,
                                                      &p_family, ((void*)0), ((void*)0) );

                    if( unlikely( !p_temp ) )
                    {
                        FcFontSetDestroy( p_font_set );
                        FcPatternDestroy( p_pattern );
                        if( p_family )
                            FreeFamilies( p_family, ((void*)0) );
                        free( psz_lc );
                        return ((void*)0);
                    }

                    psz_last_name = p_temp->psz_name;
                }
            }
            FcFontSetDestroy( p_font_set );
        }
    }
    FcPatternDestroy( p_pattern );

    if( p_family )
        vlc_dictionary_insert( &p_sys->fallback_map, psz_lc, p_family );

    free( psz_lc );
    return p_family;
}
