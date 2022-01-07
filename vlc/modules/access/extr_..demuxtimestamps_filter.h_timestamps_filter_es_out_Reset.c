
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_size; scalar_t__* p_elems; } ;
struct tf_es_out_s {int b_discontinuity; int pcrtf; TYPE_1__ es_list; } ;
struct tf_es_out_id_s {int tf; } ;


 int timestamps_filter_init (int *) ;

__attribute__((used)) static void timestamps_filter_es_out_Reset(struct tf_es_out_s *out)
{
    for(int i=0; i<out->es_list.i_size; i++)
    {
        struct tf_es_out_id_s *cur = (struct tf_es_out_id_s *)out->es_list.p_elems[i];
        timestamps_filter_init(&cur->tf);
    }
    timestamps_filter_init(&out->pcrtf);
    out->b_discontinuity = 0;
}
