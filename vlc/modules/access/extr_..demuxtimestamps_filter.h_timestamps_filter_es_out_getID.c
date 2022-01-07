
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_size; scalar_t__* p_elems; } ;
struct tf_es_out_s {TYPE_1__ es_list; } ;
struct tf_es_out_id_s {int * id; } ;
typedef int es_out_id_t ;



__attribute__((used)) static struct tf_es_out_id_s * timestamps_filter_es_out_getID(struct tf_es_out_s *p_sys, es_out_id_t *id)
{
    for(int i=0; i<p_sys->es_list.i_size; i++)
    {
        struct tf_es_out_id_s *cur = (struct tf_es_out_id_s *)p_sys->es_list.p_elems[i];
        if(cur->id != id)
            continue;
        return cur;
    }
    return ((void*)0);
}
