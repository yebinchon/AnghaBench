
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_libvlc_int; } ;
typedef TYPE_1__ libvlc_instance_t ;


 int vlc_LogSet (int ,int *,int *) ;

void libvlc_log_unset (libvlc_instance_t *inst)
{
    vlc_LogSet (inst->p_libvlc_int, ((void*)0), ((void*)0));
}
