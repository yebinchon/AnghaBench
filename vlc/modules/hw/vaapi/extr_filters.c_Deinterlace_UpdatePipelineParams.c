
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sz; int surfaces; } ;
struct TYPE_6__ {int sz; int surfaces; } ;
struct deint_data {TYPE_1__ forward_refs; TYPE_2__ backward_refs; } ;
struct TYPE_7__ {int num_forward_references; int num_backward_references; int forward_references; int backward_references; } ;
typedef TYPE_3__ VAProcPipelineParameterBuffer ;



__attribute__((used)) static void
Deinterlace_UpdatePipelineParams
(void * p_data, VAProcPipelineParameterBuffer * pipeline_param)
{
    struct deint_data *const p_deint_data = p_data;

    pipeline_param->backward_references = p_deint_data->backward_refs.surfaces;
    pipeline_param->forward_references = p_deint_data->forward_refs.surfaces;
    pipeline_param->num_backward_references = p_deint_data->backward_refs.sz;
    pipeline_param->num_forward_references = p_deint_data->forward_refs.sz;
}
