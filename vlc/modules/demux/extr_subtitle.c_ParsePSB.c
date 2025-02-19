
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int text_t ;
struct TYPE_3__ {char* psz_text; void* i_stop; void* i_start; } ;
typedef TYPE_1__ subtitle_t ;
typedef int subs_properties_t ;


 char* TextGetLine (int *) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (size_t) ;
 int free (char*) ;
 char* malloc (scalar_t__) ;
 int sscanf (char const*,char*,int*,int*,int*,int*,int*,int*,char*) ;
 scalar_t__ strlen (char const*) ;
 void* vlc_tick_from_sec (int) ;

__attribute__((used)) static int ParsePSB( vlc_object_t *p_obj, subs_properties_t *p_props,
                     text_t *txt, subtitle_t *p_subtitle, size_t i_idx )
{
    VLC_UNUSED(p_obj);
    VLC_UNUSED(p_props);
    VLC_UNUSED( i_idx );

    char *psz_text;
    int i;

    for( ;; )
    {
        int h1, m1, s1;
        int h2, m2, s2;
        const char *s = TextGetLine( txt );

        if( !s )
            return VLC_EGENERIC;

        psz_text = malloc( strlen( s ) + 1 );
        if( !psz_text )
            return VLC_ENOMEM;

        if( sscanf( s, "{%d:%d:%d}{%d:%d:%d}%[^\r\n]",
                    &h1, &m1, &s1, &h2, &m2, &s2, psz_text ) == 7 )
        {
            p_subtitle->i_start = vlc_tick_from_sec( h1 * 3600 + m1 * 60 + s1 );
            p_subtitle->i_stop = vlc_tick_from_sec( h2 * 3600 + m2 * 60 + s2 );
            break;
        }
        free( psz_text );
    }


    for( i = 0; psz_text[i] != '\0'; i++ )
    {
        if( psz_text[i] == '|' )
            psz_text[i] = '\n';
    }
    p_subtitle->psz_text = psz_text;
    return VLC_SUCCESS;
}
