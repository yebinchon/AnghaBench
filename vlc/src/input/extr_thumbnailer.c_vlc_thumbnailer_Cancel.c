
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int worker; } ;
typedef TYPE_2__ vlc_thumbnailer_t ;
struct TYPE_7__ {int * cb; } ;
struct TYPE_9__ {int lock; TYPE_1__ params; } ;
typedef TYPE_3__ vlc_thumbnailer_request_t ;


 int background_worker_Cancel (int ,TYPE_3__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlc_thumbnailer_Cancel( vlc_thumbnailer_t* thumbnailer,
                             vlc_thumbnailer_request_t* req )
{
    vlc_mutex_lock( &req->lock );

    req->params.cb = ((void*)0);
    vlc_mutex_unlock( &req->lock );
    background_worker_Cancel( thumbnailer->worker, req );
}
