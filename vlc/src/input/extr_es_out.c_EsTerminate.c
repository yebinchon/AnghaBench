
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_terminated; int node; } ;
typedef TYPE_1__ es_out_id_t ;


 int vlc_list_remove (int *) ;

__attribute__((used)) static void EsTerminate(es_out_id_t *es)
{
    vlc_list_remove(&es->node);

    es->b_terminated = 1;
}
