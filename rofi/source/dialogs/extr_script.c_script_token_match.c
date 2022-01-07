
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rofi_int_matcher ;
struct TYPE_7__ {TYPE_2__* private_data; } ;
struct TYPE_6__ {TYPE_1__* cmd_list; } ;
struct TYPE_5__ {int entry; } ;
typedef TYPE_2__ ScriptModePrivateData ;
typedef TYPE_3__ Mode ;


 int helper_token_match (int **,int ) ;

__attribute__((used)) static int script_token_match ( const Mode *sw, rofi_int_matcher **tokens, unsigned int index )
{
    ScriptModePrivateData *rmpd = sw->private_data;
    return helper_token_match ( tokens, rmpd->cmd_list[index].entry );
}
