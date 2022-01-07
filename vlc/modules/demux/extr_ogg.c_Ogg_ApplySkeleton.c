
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int psz_description; } ;
struct TYPE_8__ {TYPE_1__ fmt; TYPE_2__* p_skel; } ;
typedef TYPE_3__ logical_stream_t ;
struct TYPE_7__ {int i_messages; char** ppsz_messages; } ;


 int Ogg_ApplyContentType (TYPE_3__*,char const*,int*) ;
 int free (int ) ;
 int strdup (char const*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static void Ogg_ApplySkeleton( logical_stream_t *p_stream )
{
    if ( !p_stream->p_skel ) return;
    for ( int i=0; i< p_stream->p_skel->i_messages; i++ )
    {
        const char *psz_message = p_stream->p_skel->ppsz_messages[i];
        if ( ! strncmp( "Name: ", psz_message, 6 ) )
        {
            free( p_stream->fmt.psz_description );
            p_stream->fmt.psz_description = strdup( psz_message + 6 );
        }
        else if ( ! strncmp("Content-Type: ", psz_message, 14 ) )
        {
            bool b_foo;
            Ogg_ApplyContentType( p_stream, psz_message + 14, &b_foo );
        }
    }
}
