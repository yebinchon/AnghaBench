#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int gsize ;
struct TYPE_7__ {char* entry; int /*<<< orphan*/ * icon_name; scalar_t__ icon_fetch_uid; } ;
struct TYPE_6__ {int cmd_list_length; int cmd_list_real_length; TYPE_3__* cmd_list; } ;
typedef  int /*<<< orphan*/  DmenuScriptEntry ;
typedef  TYPE_1__ DmenuModePrivateData ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,char*,int) ; 
 TYPE_3__* FUNC2 (TYPE_3__*,int) ; 
 char* FUNC3 (char*,int) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static void FUNC5 ( DmenuModePrivateData * pd, char *data, gsize len )
{
    gsize data_len = len;
    if ( ( pd->cmd_list_length + 2 ) > pd->cmd_list_real_length ) {
        pd->cmd_list_real_length = FUNC0 ( pd->cmd_list_real_length * 2, 512 );
        pd->cmd_list             = FUNC2 ( pd->cmd_list, ( pd->cmd_list_real_length ) * sizeof ( DmenuScriptEntry ) );
    }
    // Init.
    pd->cmd_list[pd->cmd_list_length].icon_fetch_uid = 0;
    pd->cmd_list[pd->cmd_list_length].icon_name      = NULL;
    char *end = FUNC4(data, '\0');
    if ( end != NULL ) {
        data_len = end-data;
        FUNC1 ( NULL, &(pd->cmd_list[pd->cmd_list_length]), end+1, len-data_len);
    }
    char *utfstr = FUNC3 ( data, data_len );
    pd->cmd_list[pd->cmd_list_length].entry      = utfstr;
    pd->cmd_list[pd->cmd_list_length + 1].entry  = NULL;

    pd->cmd_list_length++;
}