
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_sys; } ;
typedef TYPE_1__ stream_t ;


 int VLC_ENOMEM ;
 int consume_tag (int ,char*) ;
 int free (char*) ;
 scalar_t__ likely (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int consume_volatile_tag( stream_t* p_demux, char const* psz_tag )
{
    char* psz_copy = strdup( psz_tag );
    int ret = VLC_ENOMEM;

    if( likely( psz_copy ) )
        ret = consume_tag( p_demux->p_sys, psz_copy );

    free( psz_copy );
    return ret;
}
