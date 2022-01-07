
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct skiptags_sys_t {scalar_t__ header_skip; } ;
struct TYPE_3__ {int s; struct skiptags_sys_t* p_sys; } ;
typedef TYPE_1__ stream_t ;


 scalar_t__ unlikely (int) ;
 int vlc_stream_Seek (int ,scalar_t__) ;

__attribute__((used)) static int Seek(stream_t *stream, uint64_t offset)
{
    const struct skiptags_sys_t *sys = stream->p_sys;

    if (unlikely(offset + sys->header_skip < offset))
        return -1;
    return vlc_stream_Seek(stream->s, sys->header_skip + offset);
}
