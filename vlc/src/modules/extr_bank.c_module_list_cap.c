
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t modc; int modv; } ;
typedef TYPE_1__ vlc_modcap_t ;
typedef int ssize_t ;
typedef int module_t ;
struct TYPE_4__ {int caps_tree; } ;


 int memcpy (int **,int ,int) ;
 TYPE_2__ modules ;
 void** tfind (char const**,int *,int ) ;
 scalar_t__ unlikely (int ) ;
 int ** vlc_alloc (size_t,int) ;
 int vlc_modcap_cmp ;

ssize_t module_list_cap (module_t ***restrict list, const char *name)
{
    const void **cp = tfind(&name, &modules.caps_tree, vlc_modcap_cmp);
    if (cp == ((void*)0))
    {
        *list = ((void*)0);
        return 0;
    }

    const vlc_modcap_t *cap = *cp;
    size_t n = cap->modc;
    module_t **tab = vlc_alloc (n, sizeof (*tab));
    *list = tab;
    if (unlikely(tab == ((void*)0)))
        return -1;

    memcpy(tab, cap->modv, sizeof (*tab) * n);
    return n;
}
