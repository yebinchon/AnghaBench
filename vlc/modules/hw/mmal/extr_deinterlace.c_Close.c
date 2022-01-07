
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_11__ {int sem; TYPE_6__* component; scalar_t__ filtered_pictures; TYPE_5__* output; TYPE_5__* input; } ;
typedef TYPE_2__ filter_sys_t ;
struct TYPE_14__ {scalar_t__ is_enabled; TYPE_5__* control; } ;
struct TYPE_13__ {scalar_t__ is_enabled; } ;
struct TYPE_12__ {scalar_t__ user_data; } ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 int bcm_host_deinit () ;
 int free (TYPE_2__*) ;
 int mmal_component_disable (TYPE_6__*) ;
 int mmal_component_release (TYPE_6__*) ;
 int mmal_port_disable (TYPE_5__*) ;
 int mmal_queue_destroy (scalar_t__) ;
 TYPE_3__* mmal_queue_get (scalar_t__) ;
 int picture_Release (int *) ;
 int vlc_sem_destroy (int *) ;

__attribute__((used)) static void Close(filter_t *filter)
{
    filter_sys_t *sys = filter->p_sys;
    MMAL_BUFFER_HEADER_T *buffer;

    if (!sys)
        return;

    if (sys->component && sys->component->control->is_enabled)
        mmal_port_disable(sys->component->control);

    if (sys->input && sys->input->is_enabled)
        mmal_port_disable(sys->input);

    if (sys->output && sys->output->is_enabled)
        mmal_port_disable(sys->output);

    if (sys->component && sys->component->is_enabled)
        mmal_component_disable(sys->component);

    while ((buffer = mmal_queue_get(sys->filtered_pictures))) {
        picture_t *pic = (picture_t *)buffer->user_data;
        picture_Release(pic);
    }

    if (sys->filtered_pictures)
        mmal_queue_destroy(sys->filtered_pictures);

    if (sys->component)
        mmal_component_release(sys->component);

    vlc_sem_destroy(&sys->sem);
    free(sys);

    bcm_host_deinit();
}
