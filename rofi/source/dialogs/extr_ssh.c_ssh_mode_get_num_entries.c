
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int hosts_list_length; } ;
typedef TYPE_1__ SSHModePrivateData ;
typedef int Mode ;


 scalar_t__ mode_get_private_data (int const*) ;

__attribute__((used)) static unsigned int ssh_mode_get_num_entries ( const Mode *sw )
{
    const SSHModePrivateData *rmpd = (const SSHModePrivateData *) mode_get_private_data ( sw );
    return rmpd->hosts_list_length;
}
