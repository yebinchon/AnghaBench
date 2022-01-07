
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t i_line_count; char** line; scalar_t__ i_line; } ;
typedef TYPE_1__ text_t ;
typedef int stream_t ;


 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 char** calloc (size_t,int) ;
 int free (char**) ;
 char** realloc (char**,size_t) ;
 char* vlc_stream_ReadLine (int *) ;

__attribute__((used)) static int TextLoad( text_t *txt, stream_t *s )
{
    size_t i_line_max;


    i_line_max = 500;
    txt->i_line_count = 0;
    txt->i_line = 0;
    txt->line = calloc( i_line_max, sizeof( char * ) );
    if( !txt->line )
        return VLC_ENOMEM;


    for( ;; )
    {
        char *psz = vlc_stream_ReadLine( s );

        if( psz == ((void*)0) )
            break;

        txt->line[txt->i_line_count] = psz;
        if( txt->i_line_count + 1 >= i_line_max )
        {
            i_line_max += 100;
            char **p_realloc = realloc( txt->line, i_line_max * sizeof( char * ) );
            if( p_realloc == ((void*)0) )
                return VLC_ENOMEM;
            txt->line = p_realloc;
        }
        txt->i_line_count++;
    }

    if( txt->i_line_count == 0 )
    {
        free( txt->line );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
