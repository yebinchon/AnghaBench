
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rofi_int_matcher ;
struct TYPE_4__ {TYPE_1__* hosts_list; } ;
struct TYPE_3__ {int hostname; } ;
typedef TYPE_2__ SSHModePrivateData ;
typedef int Mode ;


 int helper_token_match (int **,int ) ;
 scalar_t__ mode_get_private_data (int const*) ;

__attribute__((used)) static int ssh_token_match ( const Mode *sw, rofi_int_matcher **tokens, unsigned int index )
{
    SSHModePrivateData *rmpd = (SSHModePrivateData *) mode_get_private_data ( sw );
    return helper_token_match ( tokens, rmpd->hosts_list[index].hostname );
}
