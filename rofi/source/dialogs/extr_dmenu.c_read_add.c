
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gsize ;
struct TYPE_7__ {char* entry; int * icon_name; scalar_t__ icon_fetch_uid; } ;
struct TYPE_6__ {int cmd_list_length; int cmd_list_real_length; TYPE_3__* cmd_list; } ;
typedef int DmenuScriptEntry ;
typedef TYPE_1__ DmenuModePrivateData ;


 int MAX (int,int) ;
 int dmenuscript_parse_entry_extras (int *,TYPE_3__*,char*,int) ;
 TYPE_3__* g_realloc (TYPE_3__*,int) ;
 char* rofi_force_utf8 (char*,int) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void read_add ( DmenuModePrivateData * pd, char *data, gsize len )
{
    gsize data_len = len;
    if ( ( pd->cmd_list_length + 2 ) > pd->cmd_list_real_length ) {
        pd->cmd_list_real_length = MAX ( pd->cmd_list_real_length * 2, 512 );
        pd->cmd_list = g_realloc ( pd->cmd_list, ( pd->cmd_list_real_length ) * sizeof ( DmenuScriptEntry ) );
    }

    pd->cmd_list[pd->cmd_list_length].icon_fetch_uid = 0;
    pd->cmd_list[pd->cmd_list_length].icon_name = ((void*)0);
    char *end = strchr(data, '\0');
    if ( end != ((void*)0) ) {
        data_len = end-data;
        dmenuscript_parse_entry_extras ( ((void*)0), &(pd->cmd_list[pd->cmd_list_length]), end+1, len-data_len);
    }
    char *utfstr = rofi_force_utf8 ( data, data_len );
    pd->cmd_list[pd->cmd_list_length].entry = utfstr;
    pd->cmd_list[pd->cmd_list_length + 1].entry = ((void*)0);

    pd->cmd_list_length++;
}
