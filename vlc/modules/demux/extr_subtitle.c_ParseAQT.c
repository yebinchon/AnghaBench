
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {scalar_t__ i_line; scalar_t__ i_line_count; } ;
typedef TYPE_1__ text_t ;
struct TYPE_8__ {int i_stop; char* psz_text; scalar_t__ i_start; } ;
typedef TYPE_2__ subtitle_t ;
typedef int subs_properties_t ;
typedef scalar_t__ int64_t ;


 char* TextGetLine (TYPE_1__*) ;
 int TextPreviousLine (TYPE_1__*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (size_t) ;
 int free (char*) ;
 char* realloc_or_free (char*,int) ;
 int sscanf (char const*,char*,int*) ;
 int strcat (char*,char const*) ;
 char* strdup (char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int ParseAQT(vlc_object_t *p_obj, subs_properties_t *p_props, text_t *txt, subtitle_t *p_subtitle, size_t i_idx )
{
    VLC_UNUSED(p_obj);
    VLC_UNUSED(p_props);
    VLC_UNUSED( i_idx );

    char *psz_text = strdup( "" );
    int i_old = 0;
    int i_firstline = 1;

    for( ;; )
    {
        int t;

        const char *s = TextGetLine( txt );

        if( !s )
        {
            free( psz_text );
            return VLC_EGENERIC;
        }


        if( sscanf (s, "-->> %d", &t) == 1)
        {
            p_subtitle->i_start = (int64_t)t;
            p_subtitle->i_stop = -1;


            if( i_firstline )
            {
                i_firstline = 0;
            }

            else
            {
                TextPreviousLine( txt );
                break;
            }
        }

        else
        {
            i_old = strlen( psz_text ) + 1;
            psz_text = realloc_or_free( psz_text, i_old + strlen( s ) + 1 );
            if( !psz_text )
                 return VLC_ENOMEM;
            strcat( psz_text, s );
            strcat( psz_text, "\n" );
            if( txt->i_line == txt->i_line_count )
                break;
        }
    }
    p_subtitle->psz_text = psz_text;
    return VLC_SUCCESS;
}
