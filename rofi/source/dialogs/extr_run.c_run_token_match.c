
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rofi_int_matcher ;
struct TYPE_5__ {scalar_t__ private_data; } ;
struct TYPE_4__ {int * cmd_list; } ;
typedef TYPE_1__ RunModePrivateData ;
typedef TYPE_2__ Mode ;


 int helper_token_match (int **,int ) ;

__attribute__((used)) static int run_token_match ( const Mode *sw, rofi_int_matcher **tokens, unsigned int index )
{
    const RunModePrivateData *rmpd = (const RunModePrivateData *) sw->private_data;
    return helper_token_match ( tokens, rmpd->cmd_list[index] );
}
