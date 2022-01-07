
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_clock_t ;
struct spu_channel {size_t id; float rate; int order; int entries; scalar_t__ delay; int * clock; } ;
typedef enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;


 int vlc_vector_init (int *) ;

__attribute__((used)) static void spu_channel_Init(struct spu_channel *channel, size_t id,
                             enum vlc_vout_order order, vlc_clock_t *clock)
{
    channel->id = id;
    channel->clock = clock;
    channel->delay = 0;
    channel->rate = 1.f;
    channel->order = order;

    vlc_vector_init(&channel->entries);
}
