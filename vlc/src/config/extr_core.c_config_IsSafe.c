
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ b_safe; } ;
typedef TYPE_1__ module_config_t ;


 TYPE_1__* config_FindConfig (char const*) ;

bool config_IsSafe( const char *name )
{
    module_config_t *p_config = config_FindConfig( name );
    return p_config != ((void*)0) && p_config->b_safe;
}
