
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;


 int vlc_stream_Read (int *,char*,int) ;

__attribute__((used)) static int StreamRead( void *p_context, char *p_buffer, int i_buffer )
{
    stream_t *s = (stream_t*)p_context;
    return vlc_stream_Read( s, p_buffer, i_buffer );
}
