
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int messages_length; int messages; } ;
typedef TYPE_1__ KeysHelpModePrivateData ;


 int config_parser_return_display_help (int *) ;

__attribute__((used)) static void get_apps ( KeysHelpModePrivateData *pd )
{
    pd->messages = config_parser_return_display_help ( &( pd->messages_length ) );
}
