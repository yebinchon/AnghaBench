
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t size; TYPE_1__* data; } ;
struct spu_channel {TYPE_2__ entries; } ;
typedef int spu_private_t ;
struct TYPE_3__ {int subpic; } ;


 int assert (int ) ;
 int spu_PrerenderCancel (int *,int ) ;
 int subpicture_Delete (int ) ;
 int vlc_vector_destroy (TYPE_2__*) ;

__attribute__((used)) static void spu_channel_Clean(spu_private_t *sys, struct spu_channel *channel)
{
    for (size_t i = 0; i < channel->entries.size; i++)
    {
        assert(channel->entries.data[i].subpic);
        spu_PrerenderCancel(sys, channel->entries.data[i].subpic);
        subpicture_Delete(channel->entries.data[i].subpic);
    }
    vlc_vector_destroy(&channel->entries);
}
