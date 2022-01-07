
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i; } ;
struct TYPE_5__ {TYPE_1__ value; int i_type; } ;
typedef TYPE_2__ module_config_t ;
typedef int int64_t ;


 int IsConfigIntegerType (int ) ;
 int assert (int ) ;
 TYPE_2__* config_FindConfig (char const*) ;
 int config_lock ;
 int vlc_rwlock_rdlock (int *) ;
 int vlc_rwlock_unlock (int *) ;

int64_t config_GetInt(const char *psz_name)
{
    module_config_t *p_config = config_FindConfig( psz_name );


    assert(p_config != ((void*)0));
    assert(IsConfigIntegerType(p_config->i_type));

    int64_t val;

    vlc_rwlock_rdlock (&config_lock);
    val = p_config->value.i;
    vlc_rwlock_unlock (&config_lock);
    return val;
}
