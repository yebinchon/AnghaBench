
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int worker; } ;
typedef TYPE_1__ input_preparser_t ;


 int background_worker_Cancel (int ,void*) ;

void input_preparser_Cancel( input_preparser_t *preparser, void *id )
{
    background_worker_Cancel( preparser->worker, id );
}
