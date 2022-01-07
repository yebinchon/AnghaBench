
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rofi_int_matcher ;
struct TYPE_4__ {TYPE_1__* cmd_list; scalar_t__ do_markup; } ;
struct TYPE_3__ {char* entry; } ;
typedef int Mode ;
typedef TYPE_2__ DmenuModePrivateData ;


 int FALSE ;
 int g_free (char*) ;
 int helper_token_match (int **,char*) ;
 scalar_t__ mode_get_private_data (int const*) ;
 int pango_parse_markup (char*,int,int ,int *,char**,int *,int *) ;

__attribute__((used)) static int dmenu_token_match ( const Mode *sw, rofi_int_matcher **tokens, unsigned int index )
{
    DmenuModePrivateData *rmpd = (DmenuModePrivateData *) mode_get_private_data ( sw );
    if ( rmpd->do_markup) {

        char *esc = ((void*)0);
        pango_parse_markup(rmpd->cmd_list[index].entry, -1, 0, ((void*)0), &esc, ((void*)0), ((void*)0));
        if ( esc ) {
            int retv = helper_token_match ( tokens, esc);
            g_free (esc);
            return retv;
        }
        return FALSE;

    } else {
        return helper_token_match ( tokens, rmpd->cmd_list[index].entry );
    }
}
