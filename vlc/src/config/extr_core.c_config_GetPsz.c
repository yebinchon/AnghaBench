
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int psz; } ;
struct TYPE_5__ {TYPE_1__ value; int i_type; } ;
typedef TYPE_2__ module_config_t ;


 int IsConfigStringType (int ) ;
 int assert (int ) ;
 TYPE_2__* config_FindConfig (char const*) ;
 int config_lock ;
 char* strdupnull (int ) ;
 int vlc_rwlock_rdlock (int *) ;
 int vlc_rwlock_unlock (int *) ;

char *config_GetPsz(const char *psz_name)
{
    module_config_t *p_config;

    p_config = config_FindConfig( psz_name );


    assert(p_config != ((void*)0));
    assert(IsConfigStringType (p_config->i_type));


    vlc_rwlock_rdlock (&config_lock);
    char *psz_value = strdupnull (p_config->value.psz);
    vlc_rwlock_unlock (&config_lock);

    return psz_value;
}
