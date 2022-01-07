
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;


 int msg_Dbg (int *,char*,void*) ;
 int * vlc_stream_FilterNew (int *,int *) ;

stream_t *stream_FilterAutoNew( stream_t *p_source )
{

    for( unsigned i = 0; i < 16; i++ )
    {
        stream_t *p_filter = vlc_stream_FilterNew( p_source, ((void*)0) );
        if( p_filter == ((void*)0) )
            break;

        msg_Dbg( p_filter, "stream filter added to %p", (void *)p_source );
        p_source = p_filter;
    }
    return p_source;
}
