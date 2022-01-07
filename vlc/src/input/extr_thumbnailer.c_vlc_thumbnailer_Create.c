
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * worker; int * parent; } ;
typedef TYPE_1__ vlc_thumbnailer_t ;
typedef int vlc_object_t ;
struct background_worker_config {int default_timeout; int max_threads; int pf_stop; int pf_probe; int pf_start; int pf_hold; int pf_release; } ;


 int * background_worker_New (TYPE_1__*,struct background_worker_config*) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int thumbnailer_request_Hold ;
 int thumbnailer_request_Probe ;
 int thumbnailer_request_Release ;
 int thumbnailer_request_Start ;
 int thumbnailer_request_Stop ;
 scalar_t__ unlikely (int ) ;

vlc_thumbnailer_t *vlc_thumbnailer_Create( vlc_object_t* parent)
{
    vlc_thumbnailer_t *thumbnailer = malloc( sizeof( *thumbnailer ) );
    if ( unlikely( thumbnailer == ((void*)0) ) )
        return ((void*)0);
    thumbnailer->parent = parent;
    struct background_worker_config cfg = {
        .default_timeout = -1,
        .max_threads = 1,
        .pf_release = thumbnailer_request_Release,
        .pf_hold = thumbnailer_request_Hold,
        .pf_start = thumbnailer_request_Start,
        .pf_probe = thumbnailer_request_Probe,
        .pf_stop = thumbnailer_request_Stop,
    };
    thumbnailer->worker = background_worker_New( thumbnailer, &cfg );
    if ( unlikely( thumbnailer->worker == ((void*)0) ) )
    {
        free( thumbnailer );
        return ((void*)0);
    }
    return thumbnailer;
}
