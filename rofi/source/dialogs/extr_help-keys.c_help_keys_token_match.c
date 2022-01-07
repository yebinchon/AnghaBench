
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rofi_int_matcher ;
struct TYPE_2__ {int * messages; } ;
typedef int Mode ;
typedef TYPE_1__ KeysHelpModePrivateData ;


 int helper_token_match (int **,int ) ;
 scalar_t__ mode_get_private_data (int const*) ;

__attribute__((used)) static int help_keys_token_match ( const Mode *data,
                                   rofi_int_matcher **tokens,
                                   unsigned int index
                                   )
{
    KeysHelpModePrivateData *rmpd = (KeysHelpModePrivateData *) mode_get_private_data ( data );
    return helper_token_match ( tokens, rmpd->messages[index] );
}
