
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* ops; } ;
typedef TYPE_2__ vlc_tls_client_t ;
struct TYPE_7__ {int (* destroy ) (TYPE_2__*) ;} ;


 int VLC_OBJECT (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int vlc_object_delete (TYPE_2__*) ;
 int vlc_objres_clear (int ) ;

void vlc_tls_ClientDelete(vlc_tls_client_t *crd)
{
    if (crd == ((void*)0))
        return;

    crd->ops->destroy(crd);
    vlc_objres_clear(VLC_OBJECT(crd));
    vlc_object_delete(crd);
}
