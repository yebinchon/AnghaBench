
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {float f; } ;
struct TYPE_7__ {float f; } ;
struct TYPE_6__ {float f; } ;
struct TYPE_9__ {TYPE_3__ value; TYPE_2__ max; TYPE_1__ min; int i_type; } ;
typedef TYPE_4__ module_config_t ;


 int IsConfigFloatType (int ) ;
 int assert (int ) ;
 TYPE_4__* config_FindConfig (char const*) ;
 int config_dirty ;
 int config_lock ;
 int vlc_rwlock_unlock (int *) ;
 int vlc_rwlock_wrlock (int *) ;

void config_PutFloat(const char *psz_name, float f_value)
{
    module_config_t *p_config = config_FindConfig( psz_name );


    assert(p_config != ((void*)0));
    assert(IsConfigFloatType(p_config->i_type));


    if ((p_config->min.f == 0.f) && (p_config->max.f == 0.f))
        ;
    else if (f_value < p_config->min.f)
        f_value = p_config->min.f;
    else if (f_value > p_config->max.f)
        f_value = p_config->max.f;

    vlc_rwlock_wrlock (&config_lock);
    p_config->value.f = f_value;
    config_dirty = 1;
    vlc_rwlock_unlock (&config_lock);
}
