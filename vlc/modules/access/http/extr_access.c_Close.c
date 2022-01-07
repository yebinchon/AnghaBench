
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int manager; int resource; } ;
typedef TYPE_2__ access_sys_t ;


 int free (TYPE_2__*) ;
 int vlc_http_mgr_destroy (int ) ;
 int vlc_http_res_destroy (int ) ;

__attribute__((used)) static void Close(vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;
    access_sys_t *sys = access->p_sys;

    vlc_http_res_destroy(sys->resource);
    vlc_http_mgr_destroy(sys->manager);
    free(sys);
}
