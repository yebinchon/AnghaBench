
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {int * inhibit; int * p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_8__ {int * module; TYPE_1__ ih; } ;
typedef TYPE_2__ inhibit_t ;


 int * module_need (TYPE_1__*,char*,int *,int) ;
 TYPE_2__* vlc_custom_create (int *,int,char*) ;
 int vlc_object_delete (TYPE_1__*) ;

vlc_inhibit_t *vlc_inhibit_Create (vlc_object_t *parent)
{
    inhibit_t *priv = vlc_custom_create (parent, sizeof (*priv), "inhibit" );
    if (priv == ((void*)0))
        return ((void*)0);

    vlc_inhibit_t *ih = &priv->ih;
    ih->p_sys = ((void*)0);
    ih->inhibit = ((void*)0);

    priv->module = module_need (ih, "inhibit", ((void*)0), 0);
    if (priv->module == ((void*)0))
    {
        vlc_object_delete(ih);
        ih = ((void*)0);
    }
    return ih;
}
