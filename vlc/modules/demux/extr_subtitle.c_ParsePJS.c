
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int text_t ;
struct TYPE_3__ {int i_start; int i_stop; char* psz_text; } ;
typedef TYPE_1__ subtitle_t ;
typedef int subs_properties_t ;


 char* TextGetLine (int *) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (size_t) ;
 int free (char*) ;
 char* malloc (int) ;
 int msg_Dbg (int *,char*,char*) ;
 int sscanf (char const*,char*,int*,int*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int ParsePJS(vlc_object_t *p_obj, subs_properties_t *p_props,
                    text_t *txt, subtitle_t *p_subtitle, size_t i_idx )
{
    VLC_UNUSED(p_obj);
    VLC_UNUSED(p_props);
    VLC_UNUSED( i_idx );

    char *psz_text;
    int i;

    for( ;; )
    {
        const char *s = TextGetLine( txt );
        int t1, t2;

        if( !s )
            return VLC_EGENERIC;

        psz_text = malloc( strlen(s) + 1 );
        if( !psz_text )
            return VLC_ENOMEM;


        if( sscanf (s, "%d,%d,\"%[^\n\r]", &t1, &t2, psz_text ) == 3 )
        {

            p_subtitle->i_start = 10 * t1;
            p_subtitle->i_stop = 10 * t2;

            psz_text[ strlen(psz_text) - 1 ] = '\0';

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
    msg_Dbg( p_obj, "%s", psz_text );
    return VLC_SUCCESS;
}
