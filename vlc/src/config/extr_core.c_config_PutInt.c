
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ i; } ;
struct TYPE_6__ {scalar_t__ i; } ;
struct TYPE_8__ {scalar_t__ i; } ;
struct TYPE_9__ {TYPE_2__ value; TYPE_1__ max; TYPE_3__ min; int i_type; } ;
typedef TYPE_4__ module_config_t ;
typedef scalar_t__ int64_t ;


 int IsConfigIntegerType (int ) ;
 int assert (int ) ;
 TYPE_4__* config_FindConfig (char const*) ;
 int config_dirty ;
 int config_lock ;
 int vlc_rwlock_unlock (int *) ;
 int vlc_rwlock_wrlock (int *) ;

void config_PutInt(const char *psz_name, int64_t i_value )
{
    module_config_t *p_config = config_FindConfig( psz_name );


    assert(p_config != ((void*)0));
    assert(IsConfigIntegerType(p_config->i_type));

    if (i_value < p_config->min.i)
        i_value = p_config->min.i;
    if (i_value > p_config->max.i)
        i_value = p_config->max.i;

    vlc_rwlock_wrlock (&config_lock);
    p_config->value.i = i_value;
    config_dirty = 1;
    vlc_rwlock_unlock (&config_lock);
}
