
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int cmd_list_length; size_t selected_line; int format; int * selected_list; TYPE_1__* cmd_list; } ;
struct TYPE_4__ {char const* entry; } ;
typedef TYPE_1__ DmenuScriptEntry ;
typedef TYPE_2__ DmenuModePrivateData ;


 int FALSE ;
 int TRUE ;
 size_t UINT32_MAX ;
 scalar_t__ bitget (int *,unsigned int) ;
 int rofi_output_formatted_line (int ,char const*,unsigned int,char const*) ;

__attribute__((used)) static void dmenu_print_results ( DmenuModePrivateData *pd, const char *input )
{
    DmenuScriptEntry *cmd_list = pd->cmd_list;
    int seen = FALSE;
    if ( pd->selected_list != ((void*)0) ) {
        for ( unsigned int st = 0; st < pd->cmd_list_length; st++ ) {
            if ( bitget ( pd->selected_list, st ) ) {
                seen = TRUE;
                rofi_output_formatted_line ( pd->format, cmd_list[st].entry , st, input );
            }
        }
    }
    if ( !seen ) {
        const char *cmd = input;
        if ( pd->selected_line != UINT32_MAX ) {
            cmd = cmd_list[pd->selected_line].entry ;
        }
        rofi_output_formatted_line ( pd->format, cmd, pd->selected_line, input );
    }
}
