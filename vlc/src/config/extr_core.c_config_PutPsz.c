
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* psz; } ;
struct TYPE_5__ {TYPE_1__ value; int i_type; } ;
typedef TYPE_2__ module_config_t ;


 int IsConfigStringType (int ) ;
 int assert (int ) ;
 TYPE_2__* config_FindConfig (char const*) ;
 int config_dirty ;
 int config_lock ;
 int free (char*) ;
 char* strdup (char const*) ;
 int vlc_rwlock_unlock (int *) ;
 int vlc_rwlock_wrlock (int *) ;

void config_PutPsz(const char *psz_name, const char *psz_value)
{
    module_config_t *p_config = config_FindConfig( psz_name );



    assert(p_config != ((void*)0));
    assert(IsConfigStringType(p_config->i_type));

    char *str, *oldstr;
    if ((psz_value != ((void*)0)) && *psz_value)
        str = strdup (psz_value);
    else
        str = ((void*)0);

    vlc_rwlock_wrlock (&config_lock);
    oldstr = (char *)p_config->value.psz;
    p_config->value.psz = str;
    config_dirty = 1;
    vlc_rwlock_unlock (&config_lock);

    free (oldstr);
}
