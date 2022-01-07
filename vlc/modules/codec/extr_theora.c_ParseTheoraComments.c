
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ p_description; TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_5__ {int comments; int* comment_lengths; scalar_t__* user_comments; } ;
struct TYPE_7__ {TYPE_1__ tc; } ;
typedef TYPE_3__ decoder_sys_t ;


 int INT_MAX ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (void*,void*,int) ;
 char* strchr (char*,char) ;
 int vlc_meta_AddExtra (scalar_t__,char*,char*) ;
 scalar_t__ vlc_meta_New () ;

__attribute__((used)) static void ParseTheoraComments( decoder_t *p_dec )
{
    char *psz_name, *psz_value, *psz_comment;
    int i = 0;

    decoder_sys_t *p_sys = p_dec->p_sys;
    while ( i < p_sys->tc.comments )
    {
        int clen = p_sys->tc.comment_lengths[i];
        if ( clen <= 0 || clen >= INT_MAX ) { i++; continue; }
        psz_comment = (char *)malloc( clen + 1 );
        if( !psz_comment )
            break;
        memcpy( (void*)psz_comment, (void*)p_sys->tc.user_comments[i], clen + 1 );
        psz_name = psz_comment;
        psz_value = strchr( psz_comment, '=' );
        if( psz_value )
        {
            *psz_value = '\0';
            psz_value++;

            if( !p_dec->p_description )
                p_dec->p_description = vlc_meta_New();


            if( p_dec->p_description )
                vlc_meta_AddExtra( p_dec->p_description, psz_name, psz_value );
        }
        free( psz_comment );
        i++;
    }
}
