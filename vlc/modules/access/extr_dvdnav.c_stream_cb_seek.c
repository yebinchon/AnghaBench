
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int stream_t ;


 int vlc_stream_Seek (int *,int ) ;

__attribute__((used)) static int stream_cb_seek( void *s, uint64_t pos )
{
    return vlc_stream_Seek( (stream_t *)s, pos );
}
