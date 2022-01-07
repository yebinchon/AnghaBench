
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int stream_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ vlc_stream_Read (int *,int *,int ) ;

__attribute__((used)) static uint32_t SkipBytes( stream_t *s, uint32_t i_bytes )
{
    ssize_t i_read = vlc_stream_Read( s, ((void*)0), i_bytes );
    return i_read > 0 ? (uint32_t) i_read : 0;
}
