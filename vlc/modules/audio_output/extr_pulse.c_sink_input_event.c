
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int pa_subscription_event_type_t ;
typedef int pa_operation ;
typedef int pa_context ;
typedef int audio_output_t ;



 int likely (int ) ;
 int msg_Err (int *,char*) ;
 int * pa_context_get_sink_input_info (int *,int ,int ,int *) ;
 int pa_operation_unref (int *) ;
 int sink_input_info_cb ;

__attribute__((used)) static void sink_input_event(pa_context *ctx,
                             pa_subscription_event_type_t type,
                             uint32_t idx, audio_output_t *aout)
{
    pa_operation *op;


    switch (type)
    {
        case 128:
            msg_Err(aout, "sink input killed!");
            break;

        default:
            op = pa_context_get_sink_input_info(ctx, idx, sink_input_info_cb,
                                                aout);
            if (likely(op != ((void*)0)))
                pa_operation_unref(op);
            break;
    }
}
