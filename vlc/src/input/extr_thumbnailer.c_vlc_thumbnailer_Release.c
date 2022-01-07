
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int worker; } ;
typedef TYPE_1__ vlc_thumbnailer_t ;


 int background_worker_Delete (int ) ;
 int free (TYPE_1__*) ;

void vlc_thumbnailer_Release( vlc_thumbnailer_t *thumbnailer )
{
    background_worker_Delete( thumbnailer->worker );
    free( thumbnailer );
}
