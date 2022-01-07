
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_15__ {scalar_t__ i_start; scalar_t__ i_order; scalar_t__ b_ephemer; scalar_t__ b_subtitle; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_19__ {size_t size; TYPE_4__* data; } ;
struct spu_channel {int order; TYPE_6__ entries; int id; } ;
struct TYPE_16__ {TYPE_5__* p; } ;
typedef TYPE_3__ spu_t ;
struct TYPE_17__ {scalar_t__ start; scalar_t__ stop; int is_late; int channel_order; TYPE_2__* subpic; } ;
typedef TYPE_4__ spu_render_entry_t ;
struct TYPE_14__ {scalar_t__ size; struct spu_channel* data; } ;
struct TYPE_18__ {scalar_t__ last_sort_date; TYPE_1__ channels; } ;
typedef TYPE_5__ spu_private_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ INT64_MAX ;
 scalar_t__ INT64_MIN ;
 scalar_t__ VOUT_SPU_CHANNEL_OSD_COUNT ;
 scalar_t__ __MAX (scalar_t__,scalar_t__) ;
 int assert (int) ;
 int spu_PrerenderCancel (TYPE_5__*,TYPE_2__*) ;
 scalar_t__ spu_channel_UpdateDates (struct spu_channel*,scalar_t__) ;
 int spu_render_entry_IsSelected (TYPE_4__*,int ,scalar_t__,scalar_t__,int) ;
 int subpicture_Delete (TYPE_2__*) ;
 TYPE_4__* vlc_alloc (size_t,int) ;
 int vlc_vector_remove (TYPE_6__*,size_t) ;

__attribute__((used)) static spu_render_entry_t *
spu_SelectSubpictures(spu_t *spu, vlc_tick_t system_now,
                      vlc_tick_t render_subtitle_date,
                      bool ignore_osd, size_t *subpicture_count)
{
    spu_private_t *sys = spu->p;

    assert(sys->channels.size >= VOUT_SPU_CHANNEL_OSD_COUNT);


    *subpicture_count = 0;
    size_t total_size = 0;
    for (size_t i = 0; i < sys->channels.size; ++i)
        total_size += sys->channels.data[i].entries.size;
    if (total_size == 0)
        return ((void*)0);

    spu_render_entry_t *subpicture_array =
        vlc_alloc(total_size, sizeof(spu_render_entry_t));
    if (!subpicture_array)
        return ((void*)0);


    for (size_t i = 0; i < sys->channels.size; i++)
    {
        struct spu_channel *channel = &sys->channels.data[i];

        vlc_tick_t start_date = render_subtitle_date;
        vlc_tick_t ephemer_subtitle_date = 0;
        vlc_tick_t ephemer_osd_date = 0;
        int64_t ephemer_subtitle_order = INT64_MIN;
        int64_t ephemer_system_order = INT64_MIN;

        if (spu_channel_UpdateDates(channel, system_now) == 0)
            continue;


        for (size_t index = 0; index < channel->entries.size; index++) {
            spu_render_entry_t *render_entry = &channel->entries.data[index];
            subpicture_t *current = render_entry->subpic;
            bool is_stop_valid;
            bool is_late;

            if (!spu_render_entry_IsSelected(render_entry, channel->id,
                                             system_now, render_subtitle_date,
                                             ignore_osd))
                continue;

            const vlc_tick_t render_date = current->b_subtitle ? render_subtitle_date : system_now;

            vlc_tick_t *ephemer_date_ptr = current->b_subtitle ? &ephemer_subtitle_date : &ephemer_osd_date;
            int64_t *ephemer_order_ptr = current->b_subtitle ? &ephemer_subtitle_order : &ephemer_system_order;
            if (current->i_start >= *ephemer_date_ptr) {
                *ephemer_date_ptr = render_entry->start;
                if (current->i_order > *ephemer_order_ptr)
                    *ephemer_order_ptr = current->i_order;
            }

            is_stop_valid = !current->b_ephemer || render_entry->stop > render_entry->start;

            is_late = is_stop_valid && render_entry->stop <= render_date;




            if (current->b_subtitle && !is_late && !current->b_ephemer)
                start_date = render_entry->start;


            render_entry->is_late = is_late;
        }


        if (start_date < sys->last_sort_date)
            start_date = sys->last_sort_date;
        if (start_date <= 0)
            start_date = INT64_MAX;


        for (size_t index = 0; index < channel->entries.size; ) {
            spu_render_entry_t *render_entry = &channel->entries.data[index];
            subpicture_t *current = render_entry->subpic;
            bool is_late = render_entry->is_late;

            if (!spu_render_entry_IsSelected(render_entry, channel->id,
                                             system_now, render_subtitle_date,
                                             ignore_osd))
            {
                index++;
                continue;
            }

            const vlc_tick_t stop_date = current->b_subtitle ? __MAX(start_date, sys->last_sort_date) : system_now;
            const vlc_tick_t ephemer_date = current->b_subtitle ? ephemer_subtitle_date : ephemer_osd_date;
            const int64_t ephemer_order = current->b_subtitle ? ephemer_subtitle_order : ephemer_system_order;


            bool is_rejeted = is_late && render_entry->stop <= stop_date;
            if (current->b_ephemer) {
                if (render_entry->start < ephemer_date)
                    is_rejeted = 1;
                else if (render_entry->start == ephemer_date &&
                         current->i_order < ephemer_order)
                    is_rejeted = 1;
            }

            if (is_rejeted)
            {
                spu_PrerenderCancel(sys, current);
                subpicture_Delete(current);
                vlc_vector_remove(&channel->entries, index);
            }
            else
            {
                render_entry->channel_order = channel->order;
                subpicture_array[(*subpicture_count)++] = *render_entry;
                index++;
            }
        }
    }

    sys->last_sort_date = render_subtitle_date;
    return subpicture_array;
}
