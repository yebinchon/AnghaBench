
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int SRT_SOCKOPT ;
typedef int SRTSOCKET ;


 int msg_Err (int *,char*,char const*,int ) ;
 int srt_getlasterror_str () ;
 int srt_setsockopt (int ,int ,int ,void const*,int) ;

int srt_set_socket_option(vlc_object_t *this, const char *srt_param,
        SRTSOCKET u, SRT_SOCKOPT opt, const void *optval, int optlen)
{
    int stat = 0;

    stat = srt_setsockopt( u, 0, opt, optval, optlen );
    if (stat)
    msg_Err( this, "Failed to set socket option %s (reason: %s)", srt_param,
            srt_getlasterror_str() );

    return stat;
}
