
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* pf_display_error ) (int ,char const*,char const*) ;} ;
struct TYPE_5__ {int data; TYPE_1__ cbs; } ;
struct TYPE_6__ {TYPE_2__ dialog; } ;
typedef TYPE_3__ libvlc_instance_t ;


 int stub1 (int ,char const*,char const*) ;

__attribute__((used)) static void
display_error_cb(void *p_data, const char *psz_title, const char *psz_text)
{
    libvlc_instance_t *p_instance = p_data;

    p_instance->dialog.cbs.pf_display_error(p_instance->dialog.data, psz_title,
                                            psz_text);
}
