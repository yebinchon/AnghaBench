
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_dialog_id ;
struct TYPE_4__ {int (* pf_update_progress ) (int ,int *,float,char const*) ;} ;
struct TYPE_5__ {int data; TYPE_1__ cbs; } ;
struct TYPE_6__ {TYPE_2__ dialog; } ;
typedef TYPE_3__ libvlc_instance_t ;
typedef int libvlc_dialog_id ;


 int stub1 (int ,int *,float,char const*) ;

__attribute__((used)) static void
update_progress_cb(void *p_data, vlc_dialog_id *p_id, float f_position,
                   const char *psz_text)
{
    libvlc_instance_t *p_instance = p_data;
    p_instance->dialog.cbs.pf_update_progress(p_instance->dialog.data,
                                              (libvlc_dialog_id *) p_id,
                                              f_position, psz_text);
}
