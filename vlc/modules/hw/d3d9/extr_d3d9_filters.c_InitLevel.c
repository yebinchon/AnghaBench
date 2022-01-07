
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct filter_level {float default_val; int Range; int level; int max; int min; } ;
struct TYPE_6__ {int f; } ;
struct TYPE_5__ {int f; } ;
struct TYPE_7__ {TYPE_2__ max; TYPE_1__ min; } ;
typedef TYPE_3__ module_config_t ;
typedef int filter_t ;


 int StoreLevel (struct filter_level*,int *,float) ;
 int atomic_init (int *,int ) ;
 TYPE_3__* config_FindConfig (char const*) ;
 float var_CreateGetFloatCommand (int *,char const*) ;

__attribute__((used)) static void InitLevel(filter_t *filter, struct filter_level *range, const char *p_name, float def)
{
    module_config_t *cfg = config_FindConfig(p_name);
    range->min = cfg->min.f;
    range->max = cfg->max.f;
    range->default_val = def;

    float val = var_CreateGetFloatCommand( filter, p_name );

    atomic_init( &range->level, StoreLevel( range, &range->Range, val ) );
}
