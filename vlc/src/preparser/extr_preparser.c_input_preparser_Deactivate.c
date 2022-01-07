
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int worker; int deactivated; } ;
typedef TYPE_1__ input_preparser_t ;


 int atomic_store (int *,int) ;
 int background_worker_Cancel (int ,int *) ;

void input_preparser_Deactivate( input_preparser_t* preparser )
{
    atomic_store( &preparser->deactivated, 1 );
    background_worker_Cancel( preparser->worker, ((void*)0) );
}
