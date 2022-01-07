
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int const vlc_family_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_6__ {int family_map; int p_families; } ;
typedef TYPE_2__ filter_sys_t ;
typedef scalar_t__ FcResult ;
typedef int FcPattern ;
typedef int FcChar8 ;
typedef scalar_t__ FcBool ;


 int FC_FAMILY ;
 int FC_FILE ;
 int FC_INDEX ;
 int FC_OUTLINE ;
 int FC_SLANT ;
 int FC_SLANT_ITALIC ;
 int FC_SLANT_ROMAN ;
 int FC_WEIGHT ;
 int FC_WEIGHT_EXTRABOLD ;
 int FC_WEIGHT_NORMAL ;
 int FcConfigSubstitute (int ,int *,int ) ;
 int FcDefaultSubstitute (int *) ;
 int * FcFontMatch (int ,int *,scalar_t__*) ;
 int FcMatchPattern ;
 int FcPatternAddBool (int *,int ,scalar_t__) ;
 int FcPatternAddInteger (int *,int ,int ) ;
 int FcPatternAddString (int *,int ,int const*) ;
 int * FcPatternCreate () ;
 int FcPatternDestroy (int *) ;
 scalar_t__ FcPatternGetBool (int *,int ,int ,scalar_t__*) ;
 scalar_t__ FcPatternGetInteger (int *,int ,int ,int*) ;
 scalar_t__ FcPatternGetString (int *,int ,int ,int **) ;
 scalar_t__ FcResultMatch ;
 scalar_t__ FcResultNoMatch ;
 scalar_t__ FcTrue ;
 int const* NewFamily (TYPE_1__*,char*,int *,int *,char*) ;
 int NewFont (char*,int,int const,int const,int const*) ;
 char* ToLower (char const*) ;
 int config ;
 int free (char*) ;
 int const* kVLCDictionaryNotFound ;
 char* strdup (char const*) ;
 scalar_t__ unlikely (int) ;
 int const* vlc_dictionary_value_for_key (int *,char*) ;

const vlc_family_t *FontConfig_GetFamily( filter_t *p_filter, const char *psz_family )
{
    filter_sys_t *p_sys = p_filter->p_sys;

    char *psz_lc = ToLower( psz_family );

    if( unlikely( !psz_lc ) )
        return ((void*)0);

    vlc_family_t *p_family =
            vlc_dictionary_value_for_key( &p_sys->family_map, psz_lc );

    if( p_family != kVLCDictionaryNotFound )
    {
        free( psz_lc );
        return p_family;
    }

    p_family = NewFamily( p_filter, psz_lc, &p_sys->p_families,
                          &p_sys->family_map, psz_lc );

    free( psz_lc );
    if( !p_family )
        return ((void*)0);

    for( int i = 0; i < 4; ++i )
    {
        bool const b_bold = i & 1;
        bool const b_italic = i & 2;

        int i_index = 0;
        FcResult result = FcResultMatch;
        FcPattern *pat, *p_pat;
        FcChar8* val_s;
        FcBool val_b;
        char *psz_fontfile = ((void*)0);


        pat = FcPatternCreate();
        if (!pat) continue;


        FcPatternAddString( pat, FC_FAMILY, (const FcChar8*) psz_family );
        FcPatternAddBool( pat, FC_OUTLINE, FcTrue );
        FcPatternAddInteger( pat, FC_SLANT, b_italic ? FC_SLANT_ITALIC : FC_SLANT_ROMAN );
        FcPatternAddInteger( pat, FC_WEIGHT, b_bold ? FC_WEIGHT_EXTRABOLD : FC_WEIGHT_NORMAL );


        FcDefaultSubstitute( pat );
        if( !FcConfigSubstitute( config, pat, FcMatchPattern ) )
        {
            FcPatternDestroy( pat );
            continue;
        }


        p_pat = FcFontMatch( config, pat, &result );
        FcPatternDestroy( pat );
        if( !p_pat || result == FcResultNoMatch ) continue;


        if( ( FcResultMatch != FcPatternGetBool( p_pat, FC_OUTLINE, 0, &val_b ) )
            || ( val_b != FcTrue ) )
        {
            FcPatternDestroy( p_pat );
            continue;
        }
        if( FcResultMatch != FcPatternGetInteger( p_pat, FC_INDEX, 0, &i_index ) )
        {
            i_index = 0;
        }

        if( FcResultMatch != FcPatternGetString( p_pat, FC_FAMILY, 0, &val_s ) )
        {
            FcPatternDestroy( p_pat );
            continue;
        }

        if( FcResultMatch == FcPatternGetString( p_pat, FC_FILE, 0, &val_s ) )
            psz_fontfile = strdup( (const char*)val_s );

        FcPatternDestroy( p_pat );

        if( !psz_fontfile )
            continue;

        NewFont( psz_fontfile, i_index, b_bold, b_italic, p_family );
    }

    return p_family;
}
