
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mc_api_sys ;
struct TYPE_4__ {int b_support_rotation; int set_output_surface; int * release_out_ts; int release_out; int get_out; int dequeue_out; int queue_in; int dequeue_in; int flush; int stop; int start; int configure_decoder; int prepare; int clean; int p_sys; int p_obj; } ;
typedef TYPE_1__ mc_api ;
struct TYPE_5__ {scalar_t__ get_output_buffer; scalar_t__ get_input_buffer; } ;
typedef int JNIEnv ;


 int Clean ;
 int ConfigureDecoder ;
 int DequeueInput ;
 int DequeueOutput ;
 int Flush ;
 int GET_ENV () ;
 int GetOutput ;
 int InitJNIFields (int ,int *) ;
 int MC_API_ERROR ;
 int Prepare ;
 int QueueInput ;
 int ReleaseOutput ;
 int SetOutputSurface ;
 int Start ;
 int Stop ;
 int calloc (int,int) ;
 TYPE_2__ jfields ;

int MediaCodecJni_Init(mc_api *api)
{
    JNIEnv *env;

    GET_ENV();

    if (!InitJNIFields(api->p_obj, env))
        return MC_API_ERROR;

    api->p_sys = calloc(1, sizeof(mc_api_sys));
    if (!api->p_sys)
        return MC_API_ERROR;

    api->clean = Clean;
    api->prepare = Prepare;
    api->configure_decoder = ConfigureDecoder;
    api->start = Start;
    api->stop = Stop;
    api->flush = Flush;
    api->dequeue_in = DequeueInput;
    api->queue_in = QueueInput;
    api->dequeue_out = DequeueOutput;
    api->get_out = GetOutput;
    api->release_out = ReleaseOutput;
    api->release_out_ts = ((void*)0);
    api->set_output_surface = SetOutputSurface;


    if (jfields.get_input_buffer && jfields.get_output_buffer)
        api->b_support_rotation = 1;
    return 0;
}
