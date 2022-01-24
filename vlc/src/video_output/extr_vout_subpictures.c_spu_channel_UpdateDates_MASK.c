#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* vlc_tick_t ;
struct TYPE_4__ {size_t size; TYPE_2__* data; } ;
struct spu_channel {TYPE_1__ entries; int /*<<< orphan*/  rate; scalar_t__ clock; } ;
struct TYPE_5__ {void* stop; void* start; void* orgstop; void* orgstart; } ;
typedef  TYPE_2__ spu_render_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 void** FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void*,void**,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC4(struct spu_channel *channel,
                                       vlc_tick_t system_now)
{
    /* Put every spu start and stop ts into the same array to convert them in
     * one shot */
    if (channel->entries.size == 0)
        return 0;
    vlc_tick_t *date_array = FUNC2(channel->entries.size,
                                       2 * sizeof(vlc_tick_t));
    if (!date_array)
        return 0;

    for (size_t index = 0; index < channel->entries.size; index++)
    {
        spu_render_entry_t *current = &channel->entries.data[index];
        FUNC0(current);

        date_array[index * 2] = current->orgstart;
        date_array[index * 2 + 1] = current->orgstop;
    }

    /* Convert all spu ts */
    if (channel->clock)
        FUNC3(channel->clock, system_now, date_array,
                                       channel->entries.size * 2, channel->rate);

    /* Put back the converted ts into the output spu_render_entry_t struct */
    for (size_t index = 0; index < channel->entries.size; index++)
    {
        spu_render_entry_t *render_entry = &channel->entries.data[index];

        render_entry->start = date_array[index * 2];
        render_entry->stop = date_array[index * 2 + 1];
    }

    FUNC1(date_array);
    return channel->entries.size;
}