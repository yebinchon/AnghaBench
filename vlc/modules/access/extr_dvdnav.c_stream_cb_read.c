
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;


 int vlc_stream_Read (int *,void*,int) ;

__attribute__((used)) static int stream_cb_read( void *s, void* buffer, int size )
{
    return vlc_stream_Read( (stream_t *)s, buffer, size );
}
