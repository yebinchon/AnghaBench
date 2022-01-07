
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vout_thread_t ;
typedef scalar_t__ vlc_tick_t ;
struct TYPE_10__ {TYPE_3__* p_sys; int pf_destroy; int pf_update; int pf_validate; } ;
typedef TYPE_1__ subpicture_updater_t ;
struct TYPE_11__ {int i_channel; scalar_t__ i_start; int b_ephemer; int b_absolute; int b_fade; scalar_t__ i_stop; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_12__ {int position; struct TYPE_12__* text; } ;
typedef TYPE_3__ osd_spu_updater_sys_t ;


 int OSDTextDestroy ;
 int OSDTextUpdate ;
 int OSDTextValidate ;
 int SUBPICTURE_ALIGN_MASK ;
 int assert (int) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (int) ;
 TYPE_3__* strdup (char const*) ;
 TYPE_2__* subpicture_New (TYPE_1__*) ;
 int var_InheritBool (int *,char*) ;
 scalar_t__ vlc_tick_now () ;
 int vout_PutSubpicture (int *,TYPE_2__*) ;

void vout_OSDText(vout_thread_t *vout, int channel,
                   int position, vlc_tick_t duration, const char *text)
{
    assert( (position & ~SUBPICTURE_ALIGN_MASK) == 0);
    if (!var_InheritBool(vout, "osd") || duration <= 0)
        return;

    osd_spu_updater_sys_t *sys = malloc(sizeof(*sys));
    if (!sys)
        return;
    sys->position = position;
    sys->text = strdup(text);

    subpicture_updater_t updater = {
        .pf_validate = OSDTextValidate,
        .pf_update = OSDTextUpdate,
        .pf_destroy = OSDTextDestroy,
        .p_sys = sys,
    };
    subpicture_t *subpic = subpicture_New(&updater);
    if (!subpic) {
        free(sys->text);
        free(sys);
        return;
    }

    subpic->i_channel = channel;
    subpic->i_start = vlc_tick_now();
    subpic->i_stop = subpic->i_start + duration;
    subpic->b_ephemer = 1;
    subpic->b_absolute = 0;
    subpic->b_fade = 1;

    vout_PutSubpicture(vout, subpic);
}
