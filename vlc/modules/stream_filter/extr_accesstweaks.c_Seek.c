
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int b_seek; } ;
typedef TYPE_2__ stream_sys_t ;


 int assert (int ) ;
 int vlc_stream_Seek (int ,int ) ;

__attribute__((used)) static int Seek( stream_t *s, uint64_t offset )
{
    stream_sys_t *p_sys = s->p_sys;

    assert( p_sys->b_seek );
    return vlc_stream_Seek( s->s, offset );
}
