
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fmtp; } ;
struct TYPE_5__ {TYPE_1__ rtp_fmt; } ;
typedef TYPE_2__ sout_stream_id_sys_t ;


 int assert (int) ;
 int sscanf (int ,char*,int*,int*) ;

void rtp_get_video_geometry( sout_stream_id_sys_t *id, int *width, int *height )
{
    int ret = sscanf( id->rtp_fmt.fmtp, "%*s width=%d; height=%d; ", width, height );
    assert( ret == 2 );
}
