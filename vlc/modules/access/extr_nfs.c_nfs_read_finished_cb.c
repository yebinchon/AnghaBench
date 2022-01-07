
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
struct TYPE_6__ {scalar_t__ i_len; } ;
struct TYPE_7__ {TYPE_1__ read; } ;
struct TYPE_9__ {scalar_t__ b_eof; TYPE_2__ res; } ;
typedef TYPE_4__ access_sys_t ;



__attribute__((used)) static bool
nfs_read_finished_cb(stream_t *p_access)
{
    access_sys_t *p_sys = p_access->p_sys;
    return p_sys->res.read.i_len > 0 || p_sys->b_eof;
}
