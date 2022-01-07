
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t size; TYPE_5__* items; } ;
struct TYPE_10__ {TYPE_1__ conf; struct TYPE_10__* next; } ;
typedef TYPE_4__ vlc_plugin_t ;
struct TYPE_9__ {int psz; int f; int i; } ;
struct TYPE_8__ {scalar_t__ psz; int f; int i; } ;
struct TYPE_11__ {TYPE_3__ orig; TYPE_2__ value; int i_type; } ;
typedef TYPE_5__ module_config_t ;


 scalar_t__ IsConfigFloatType (int ) ;
 scalar_t__ IsConfigIntegerType (int ) ;
 scalar_t__ IsConfigStringType (int ) ;
 int config_lock ;
 int free (char*) ;
 scalar_t__ strdupnull (int ) ;
 TYPE_4__* vlc_plugins ;
 int vlc_rwlock_unlock (int *) ;
 int vlc_rwlock_wrlock (int *) ;

void config_ResetAll(void)
{
    vlc_rwlock_wrlock (&config_lock);
    for (vlc_plugin_t *p = vlc_plugins; p != ((void*)0); p = p->next)
    {
        for (size_t i = 0; i < p->conf.size; i++ )
        {
            module_config_t *p_config = p->conf.items + i;

            if (IsConfigIntegerType (p_config->i_type))
                p_config->value.i = p_config->orig.i;
            else
            if (IsConfigFloatType (p_config->i_type))
                p_config->value.f = p_config->orig.f;
            else
            if (IsConfigStringType (p_config->i_type))
            {
                free ((char *)p_config->value.psz);
                p_config->value.psz =
                        strdupnull (p_config->orig.psz);
            }
        }
    }
    vlc_rwlock_unlock (&config_lock);
}
