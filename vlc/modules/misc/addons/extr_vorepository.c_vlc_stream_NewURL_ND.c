
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int addons_finder_t ;


 int * vlc_stream_FilterNew (int *,char*) ;
 int * vlc_stream_NewURL (int *,char const*) ;

__attribute__((used)) static stream_t * vlc_stream_NewURL_ND( addons_finder_t *p_obj, const char *psz_uri )
{
    stream_t *p_stream = vlc_stream_NewURL( p_obj, psz_uri );
    if( p_stream )
    {


        stream_t *p_chain = vlc_stream_FilterNew( p_stream, "inflate" );
        if( p_chain )
            p_stream = p_chain;
    }
    return p_stream;
}
