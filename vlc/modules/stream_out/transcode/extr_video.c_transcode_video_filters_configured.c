
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_f_chain; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;



__attribute__((used)) static inline bool transcode_video_filters_configured( const sout_stream_id_sys_t *id )
{
    return !!id->p_f_chain;
}
