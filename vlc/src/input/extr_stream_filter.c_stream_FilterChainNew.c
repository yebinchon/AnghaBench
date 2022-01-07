
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;


 int free (char*) ;
 int msg_Warn (int *,char*,char const*) ;
 char* strdup (char const*) ;
 char* strtok_r (char*,char*,char**) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_stream_FilterNew (int *,char const*) ;

stream_t *stream_FilterChainNew( stream_t *p_source, const char *psz_chain )
{

    char *chain = strdup( psz_chain );
    if( unlikely(chain == ((void*)0)) )
        return p_source;

    char *buf;
    for( const char *name = strtok_r( chain, ":", &buf );
         name != ((void*)0);
         name = strtok_r( ((void*)0), ":", &buf ) )
    {
        stream_t *p_filter = vlc_stream_FilterNew( p_source, name );
        if( p_filter != ((void*)0) )
            p_source = p_filter;
        else
            msg_Warn( p_source, "cannot insert stream filter %s", name );
    }
    free( chain );

    return p_source;
}
