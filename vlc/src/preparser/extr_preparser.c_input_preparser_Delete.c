
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fetcher; int worker; } ;
typedef TYPE_1__ input_preparser_t ;


 int background_worker_Delete (int ) ;
 int free (TYPE_1__*) ;
 int input_fetcher_Delete (scalar_t__) ;

void input_preparser_Delete( input_preparser_t *preparser )
{
    background_worker_Delete( preparser->worker );

    if( preparser->fetcher )
        input_fetcher_Delete( preparser->fetcher );

    free( preparser );
}
