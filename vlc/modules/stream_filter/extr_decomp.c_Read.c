
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int read_fd; } ;
typedef TYPE_2__ stream_sys_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ vlc_read_i11e (int ,void*,size_t) ;

__attribute__((used)) static ssize_t Read (stream_t *stream, void *buf, size_t buflen)
{
    stream_sys_t *sys = stream->p_sys;
    ssize_t val = vlc_read_i11e (sys->read_fd, buf, buflen);
    return (val >= 0) ? val : 0;
}
