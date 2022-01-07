
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fmt; scalar_t__ decoder; } ;
typedef TYPE_1__ es_out_id_t ;


 int es_format_Clean (int *) ;
 int free (TYPE_1__*) ;
 int test_decoder_destroy (scalar_t__) ;
 int test_decoder_process (scalar_t__,int *) ;

__attribute__((used)) static void IdDelete(es_out_id_t *id)
{
    free(id);
}
