
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int text_t ;
struct TYPE_5__ {int i_start; int i_stop; char* psz_text; } ;
typedef TYPE_1__ subtitle_t ;
struct TYPE_6__ {int i_microsecperframe; } ;
typedef TYPE_2__ subs_properties_t ;


 scalar_t__ CLOCK_FREQ ;
 char* TextGetLine (int *) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (size_t) ;
 int free (char*) ;
 int llroundf (float) ;
 char* malloc (scalar_t__) ;
 int sscanf (char const*,char*,int*,...) ;
 scalar_t__ strlen (char const*) ;
 float us_strtof (char*,int *) ;
 float var_GetFloat (int *,char*) ;

__attribute__((used)) static int ParseMicroDvd( vlc_object_t *p_obj, subs_properties_t *p_props,
                          text_t *txt, subtitle_t *p_subtitle,
                          size_t i_idx )
{
    VLC_UNUSED( i_idx );
    char *psz_text;
    int i_start;
    int i_stop;
    int i;

    for( ;; )
    {
        const char *s = TextGetLine( txt );
        if( !s )
            return VLC_EGENERIC;

        psz_text = malloc( strlen(s) + 1 );
        if( !psz_text )
            return VLC_ENOMEM;

        i_start = 0;
        i_stop = -1;
        if( sscanf( s, "{%d}{}%[^\r\n]", &i_start, psz_text ) == 2 ||
            sscanf( s, "{%d}{%d}%[^\r\n]", &i_start, &i_stop, psz_text ) == 3)
        {
            if( i_start != 1 || i_stop != 1 )
                break;



            float f_fps = us_strtof( psz_text, ((void*)0) );
            if( f_fps > 0.f && var_GetFloat( p_obj, "sub-original-fps" ) <= 0.f )
                p_props->i_microsecperframe = llroundf((float)CLOCK_FREQ / f_fps);
        }
        free( psz_text );
    }


    for( i = 0; psz_text[i] != '\0'; i++ )
    {
        if( psz_text[i] == '|' )
            psz_text[i] = '\n';
    }


    p_subtitle->i_start = i_start * p_props->i_microsecperframe;
    p_subtitle->i_stop = i_stop >= 0 ? (i_stop * p_props->i_microsecperframe) : -1;
    p_subtitle->psz_text = psz_text;
    return VLC_SUCCESS;
}
