
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int messages_length; } ;
typedef int Mode ;
typedef TYPE_1__ KeysHelpModePrivateData ;


 scalar_t__ mode_get_private_data (int const*) ;

__attribute__((used)) static unsigned int help_keys_mode_get_num_entries ( const Mode *sw )
{
    const KeysHelpModePrivateData *pd = (const KeysHelpModePrivateData *) mode_get_private_data ( sw );
    return pd->messages_length;
}
