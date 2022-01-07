
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_string; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int intf_thread_t ;


 int VLC_UNUSED (char const*) ;
 int intf_Create (int ,int ) ;
 int vlc_object_instance (int *) ;

__attribute__((used)) static void Intf(intf_thread_t *intf, char const *psz_cmd,
                 vlc_value_t newval)
{
    VLC_UNUSED(psz_cmd);
    intf_Create(vlc_object_instance(intf), newval.psz_string);
}
