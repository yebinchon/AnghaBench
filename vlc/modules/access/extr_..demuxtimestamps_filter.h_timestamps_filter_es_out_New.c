
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cbs; } ;
struct tf_es_out_s {int b_discontinuity; TYPE_1__ es_out; int es_list; int pcrtf; TYPE_1__* original_es_out; } ;
typedef TYPE_1__ es_out_t ;


 int ARRAY_INIT (int ) ;
 int free (struct tf_es_out_s*) ;
 struct tf_es_out_s* malloc (int) ;
 int timestamps_filter_es_out_cbs ;
 int timestamps_filter_init (int *) ;

__attribute__((used)) static es_out_t * timestamps_filter_es_out_New(es_out_t *orig)
{
    struct tf_es_out_s *tf = malloc(sizeof(*tf));
    if(!tf)
    {
        free(tf);
        return ((void*)0);
    }
    tf->original_es_out = orig;
    tf->b_discontinuity = 0;
    timestamps_filter_init(&tf->pcrtf);
    ARRAY_INIT(tf->es_list);

    tf->es_out.cbs = &timestamps_filter_es_out_cbs;

    return &tf->es_out;
}
