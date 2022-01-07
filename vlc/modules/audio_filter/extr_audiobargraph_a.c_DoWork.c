
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int audio; } ;
struct TYPE_14__ {TYPE_1__ fmt_in; TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_15__ {scalar_t__ time_window; int started; scalar_t__ lastAlarm; scalar_t__ repetition_time; float alarm_threshold; scalar_t__ bargraph_repetition; scalar_t__ counter; scalar_t__ bargraph; TYPE_5__* first; TYPE_5__* last; scalar_t__ silence; } ;
typedef TYPE_3__ filter_sys_t ;
struct TYPE_16__ {size_t i_nb_samples; scalar_t__ i_pts; scalar_t__ p_buffer; } ;
typedef TYPE_4__ block_t ;
struct TYPE_17__ {double value; scalar_t__ date; struct TYPE_17__* next; } ;
typedef TYPE_5__ ValueDate_t ;


 int AOUT_CHAN_MAX ;
 int SendValues (TYPE_2__*,float*,int) ;
 int aout_FormatNbChannels (int *) ;
 int free (TYPE_5__*) ;
 float sqrtf (float) ;
 int var_SetBool (int ,char*,int) ;
 int vlc_object_instance (TYPE_2__*) ;
 TYPE_5__* xmalloc (int) ;

__attribute__((used)) static block_t *DoWork( filter_t *p_filter, block_t *p_in_buf )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    float *p_sample = (float *)p_in_buf->p_buffer;
    float i_value[AOUT_CHAN_MAX];

    int nbChannels = aout_FormatNbChannels(&p_filter->fmt_in.audio);

    for (int i = 0; i < nbChannels; i++)
        i_value[i] = 0.;


    for (size_t i = 0; i < p_in_buf->i_nb_samples; i++)
        for (int j = 0; j<nbChannels; j++) {
            float ch = *p_sample++;
            if (ch > i_value[j])
                i_value[j] = ch;
        }

    if (p_sys->silence) {

        ValueDate_t *new = xmalloc(sizeof(*new));
        new->value = 0.0;
        for (int j = 0; j<nbChannels; j++) {
            float ch = i_value[j];
            if (ch > new->value)
                new->value = ch;
        }
        new->value *= new->value;
        new->date = p_in_buf->i_pts;
        new->next = ((void*)0);
        if (p_sys->last != ((void*)0))
            p_sys->last->next = new;
        p_sys->last = new;
        if (p_sys->first == ((void*)0))
            p_sys->first = new;


        while (p_sys->first->date < new->date - p_sys->time_window) {
            p_sys->started = 1;
            ValueDate_t *current = p_sys->first;
            p_sys->first = p_sys->first->next;
            free(current);
        }


        if (p_sys->started && p_in_buf->i_pts > p_sys->lastAlarm + p_sys->repetition_time) {


            ValueDate_t *current = p_sys->first;
            float sum = 0.0;
            int count = 0;
            while (current != ((void*)0)) {
                sum += current->value;
                count++;
                current = current->next;
            }
            sum /= count;
            sum = sqrtf(sum);


            var_SetBool(vlc_object_instance(p_filter), "audiobargraph_v-alarm",
                        sum < p_sys->alarm_threshold);

            p_sys->lastAlarm = p_in_buf->i_pts;
        }
    }

    if (p_sys->bargraph && nbChannels > 0 && p_sys->counter++ > p_sys->bargraph_repetition) {
        SendValues(p_filter, i_value, nbChannels);
        p_sys->counter = 0;
    }

    return p_in_buf;
}
