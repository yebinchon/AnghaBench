
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int libvlc_log_cb ;
struct TYPE_6__ {void* data; int cb; } ;
struct TYPE_7__ {int p_libvlc_int; TYPE_1__ log; } ;
typedef TYPE_2__ libvlc_instance_t ;


 int libvlc_log_ops ;
 int libvlc_log_unset (TYPE_2__*) ;
 int vlc_LogSet (int ,int *,TYPE_2__*) ;

void libvlc_log_set (libvlc_instance_t *inst, libvlc_log_cb cb, void *data)
{
    libvlc_log_unset (inst);
    inst->log.cb = cb;
    inst->log.data = data;
    vlc_LogSet(inst->p_libvlc_int, &libvlc_log_ops, inst);
}
