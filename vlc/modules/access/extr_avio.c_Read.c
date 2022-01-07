
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int ssize_t ;
struct TYPE_5__ {int context; } ;
typedef TYPE_2__ access_sys_t ;


 int avio_read (int ,void*,size_t) ;

__attribute__((used)) static ssize_t Read(stream_t *access, void *data, size_t size)
{
    access_sys_t *sys = access->p_sys;

    int r = avio_read(sys->context, data, size);
    if (r < 0)
        r = 0;
    return r;
}
