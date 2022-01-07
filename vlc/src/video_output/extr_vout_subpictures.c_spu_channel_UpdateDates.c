
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* vlc_tick_t ;
struct TYPE_4__ {size_t size; TYPE_2__* data; } ;
struct spu_channel {TYPE_1__ entries; int rate; scalar_t__ clock; } ;
struct TYPE_5__ {void* stop; void* start; void* orgstop; void* orgstart; } ;
typedef TYPE_2__ spu_render_entry_t ;


 int assert (TYPE_2__*) ;
 int free (void**) ;
 void** vlc_alloc (size_t,int) ;
 int vlc_clock_ConvertArrayToSystem (scalar_t__,void*,void**,int,int ) ;

__attribute__((used)) static size_t spu_channel_UpdateDates(struct spu_channel *channel,
                                       vlc_tick_t system_now)
{


    if (channel->entries.size == 0)
        return 0;
    vlc_tick_t *date_array = vlc_alloc(channel->entries.size,
                                       2 * sizeof(vlc_tick_t));
    if (!date_array)
        return 0;

    for (size_t index = 0; index < channel->entries.size; index++)
    {
        spu_render_entry_t *current = &channel->entries.data[index];
        assert(current);

        date_array[index * 2] = current->orgstart;
        date_array[index * 2 + 1] = current->orgstop;
    }


    if (channel->clock)
        vlc_clock_ConvertArrayToSystem(channel->clock, system_now, date_array,
                                       channel->entries.size * 2, channel->rate);


    for (size_t index = 0; index < channel->entries.size; index++)
    {
        spu_render_entry_t *render_entry = &channel->entries.data[index];

        render_entry->start = date_array[index * 2];
        render_entry->stop = date_array[index * 2 + 1];
    }

    free(date_array);
    return channel->entries.size;
}
