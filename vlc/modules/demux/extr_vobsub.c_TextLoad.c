
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t i_line_count; char** line; scalar_t__ i_line; } ;
typedef TYPE_1__ text_t ;
typedef int stream_t ;


 int INT_MAX ;
 int VLC_SUCCESS ;
 int free (char*) ;
 char** realloc (char**,size_t) ;
 char* vlc_stream_ReadLine (int *) ;

__attribute__((used)) static int TextLoad( text_t *txt, stream_t *s )
{
    char **lines = ((void*)0);
    size_t n = 0;


    for( ;; )
    {
        char *psz = vlc_stream_ReadLine( s );
        char **ppsz_new;

        if( psz == ((void*)0) || (n >= INT_MAX/sizeof(char *)) )
        {
            free( psz );
            break;
        }

        ppsz_new = realloc( lines, (n + 1) * sizeof (char *) );
        if( ppsz_new == ((void*)0) )
        {
            free( psz );
            break;
        }
        lines = ppsz_new;
        lines[n++] = psz;
    }

    txt->i_line_count = n;
    txt->i_line = 0;
    txt->line = lines;

    return VLC_SUCCESS;
}
