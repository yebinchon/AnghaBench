
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vcddev_t ;
struct TYPE_2__ {int * pf_readdir; void* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int AccessClose (void*) ;
 int access_sys_t ;
 int demux_sys_t ;
 int ioctl_Close (int *,int *) ;
 scalar_t__ offsetof (int ,int ) ;
 int static_assert (int,char*) ;
 int vcddev ;

__attribute__((used)) static void Close(vlc_object_t *obj)
{
    stream_t *stream = (stream_t *)obj;
    void *sys = stream->p_sys;

    if (stream->pf_readdir != ((void*)0))
        AccessClose(sys);

    static_assert(offsetof(demux_sys_t, vcddev) == 0, "Invalid cast");
    static_assert(offsetof(access_sys_t, vcddev) == 0, "Invalid cast");
    ioctl_Close(obj, *(vcddev_t **)sys);
}
