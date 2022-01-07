
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct spu_channel {size_t id; } ;
struct TYPE_6__ {TYPE_3__* p; } ;
typedef TYPE_2__ spu_t ;
struct TYPE_5__ {size_t size; struct spu_channel* data; } ;
struct TYPE_7__ {TYPE_1__ channels; } ;
typedef TYPE_3__ spu_private_t ;


 int vlc_assert_unreachable () ;

__attribute__((used)) static struct spu_channel *spu_GetChannel(spu_t *spu, size_t channel_id)
{
    spu_private_t *sys = spu->p;

    for (size_t i = 0; i < sys->channels.size; ++i)
        if (sys->channels.data[i].id == channel_id)
            return &sys->channels.data[i];

    vlc_assert_unreachable();
}
