
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ i_type; struct TYPE_4__* p_next; struct TYPE_4__* p_first; struct TYPE_4__* p_father; } ;
typedef TYPE_1__ MP4_Box_t ;


 scalar_t__ ATOM_root ;
 scalar_t__ VLC_FOURCC (char,char,char,char) ;
 int free (char*) ;
 int get_token (char**,char**,int*) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int vasprintf (char**,char const*,int ) ;

__attribute__((used)) static void MP4_BoxGet_Internal( const MP4_Box_t **pp_result, const MP4_Box_t *p_box,
                                 const char *psz_fmt, va_list args)
{
    char *psz_dup;
    char *psz_path;
    char *psz_token = ((void*)0);

    if( !p_box )
    {
        *pp_result = ((void*)0);
        return;
    }

    if( vasprintf( &psz_path, psz_fmt, args ) == -1 )
        psz_path = ((void*)0);

    if( !psz_path || !psz_path[0] )
    {
        free( psz_path );
        *pp_result = ((void*)0);
        return;
    }


    psz_dup = psz_path;
    for( ; ; )
    {
        int i_number;

        if( !get_token( &psz_path, &psz_token, &i_number ) )
            goto error_box;


        if( !psz_token )
        {
            free( psz_dup );
            *pp_result = p_box;
            return;
        }
        else
        if( !strcmp( psz_token, "/" ) )
        {

            while( p_box && p_box->i_type != ATOM_root )
            {
                p_box = p_box->p_father;
            }
            if( !p_box )
            {
                goto error_box;
            }
        }
        else
        if( !strcmp( psz_token, "." ) )
        {

        }
        else
        if( !strcmp( psz_token, ".." ) )
        {
            p_box = p_box->p_father;
            if( !p_box )
            {
                goto error_box;
            }
        }
        else
        if( strlen( psz_token ) == 4 )
        {
            uint32_t i_fourcc;
            i_fourcc = VLC_FOURCC( psz_token[0], psz_token[1],
                                   psz_token[2], psz_token[3] );
            p_box = p_box->p_first;
            for( ; ; )
            {
                if( !p_box )
                {
                    goto error_box;
                }
                if( p_box->i_type == i_fourcc )
                {
                    if( !i_number )
                    {
                        break;
                    }
                    i_number--;
                }
                p_box = p_box->p_next;
            }
        }
        else
        if( *psz_token == '\0' )
        {
            p_box = p_box->p_first;
            for( ; ; )
            {
                if( !p_box )
                {
                    goto error_box;
                }
                if( !i_number )
                {
                    break;
                }
                i_number--;
                p_box = p_box->p_next;
            }
        }
        else
        {

            goto error_box;
        }

        free( psz_token );
    }

    return;

error_box:
    free( psz_token );
    free( psz_dup );
    *pp_result = ((void*)0);
    return;
}
