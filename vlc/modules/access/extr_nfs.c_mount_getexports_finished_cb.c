
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_6__ {int i_count; } ;
struct TYPE_7__ {TYPE_1__ exports; } ;
struct TYPE_9__ {TYPE_2__ res; } ;
typedef TYPE_4__ access_sys_t ;



__attribute__((used)) static bool
mount_getexports_finished_cb(stream_t *p_access)
{
    access_sys_t *p_sys = p_access->p_sys;
    return p_sys->res.exports.i_count != -1;
}
