
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int pa_operation ;
typedef int pa_context ;
typedef int audio_output_t ;





 int * pa_context_get_sink_info_by_index (int *,int ,int ,int *) ;
 int pa_operation_unref (int *) ;
 int sink_add_cb ;
 int sink_del (int ,int *) ;
 int sink_mod_cb ;

__attribute__((used)) static void sink_event(pa_context *ctx, unsigned type, uint32_t idx,
                       audio_output_t *aout)
{
    pa_operation *op = ((void*)0);

    switch (type)
    {
        case 129:
            op = pa_context_get_sink_info_by_index(ctx, idx, sink_add_cb,
                                                   aout);
            break;
        case 130:
            op = pa_context_get_sink_info_by_index(ctx, idx, sink_mod_cb,
                                                   aout);
            break;
        case 128:
            sink_del(idx, aout);
            break;
    }
    if (op != ((void*)0))
        pa_operation_unref(op);
}
