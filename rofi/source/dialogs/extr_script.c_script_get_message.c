
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* private_data; } ;
struct TYPE_4__ {int message; } ;
typedef TYPE_1__ ScriptModePrivateData ;
typedef TYPE_2__ Mode ;


 char* g_strdup (int ) ;

__attribute__((used)) static char *script_get_message ( const Mode *sw )
{
    ScriptModePrivateData *pd = sw->private_data;
    return g_strdup ( pd->message );
}
