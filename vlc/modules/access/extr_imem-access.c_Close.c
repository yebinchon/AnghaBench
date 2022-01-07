
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_4__ {int opaque; int (* close_cb ) (int ) ;} ;
typedef TYPE_2__ access_sys_t ;


 int stub1 (int ) ;

__attribute__((used)) static void Close(vlc_object_t *object)
{
    stream_t *access = (stream_t *)object;
    access_sys_t *sys = access->p_sys;

    if (sys->close_cb != ((void*)0))
        sys->close_cb(sys->opaque);
}
