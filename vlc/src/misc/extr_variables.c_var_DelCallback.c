
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_callback_t ;
struct TYPE_3__ {void* p_data; int pf_value_callback; } ;
typedef TYPE_1__ callback_entry_t ;


 int DelCallback (int *,char const*,TYPE_1__*,int ) ;
 int vlc_value_callback ;

void (var_DelCallback)(vlc_object_t *p_this, const char *psz_name,
                       vlc_callback_t pf_callback, void *p_data)
{
    callback_entry_t entry;
    entry.pf_value_callback = pf_callback;
    entry.p_data = p_data;

    DelCallback(p_this, psz_name, &entry, vlc_value_callback);
}
