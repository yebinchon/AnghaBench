
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* name; struct TYPE_3__* modv; } ;
typedef TYPE_1__ vlc_modcap_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void vlc_modcap_free(void *data)
{
    vlc_modcap_t *cap = data;

    free(cap->modv);
    free(cap->name);
    free(cap);
}
