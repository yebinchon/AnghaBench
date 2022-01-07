
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_client_t ;
typedef int vlc_object_t ;


 int msg_Err (int *,char*) ;
 int tls_client_load ;
 scalar_t__ unlikely (int ) ;
 int * vlc_custom_create (int *,int,char*) ;
 int * vlc_module_load (int *,char*,int *,int,int ,int *) ;
 int vlc_object_delete (int *) ;

vlc_tls_client_t *vlc_tls_ClientCreate(vlc_object_t *obj)
{
    vlc_tls_client_t *crd = vlc_custom_create(obj, sizeof (*crd),
                                              "tls client");
    if (unlikely(crd == ((void*)0)))
        return ((void*)0);

    if (vlc_module_load(crd, "tls client", ((void*)0), 0,
                        tls_client_load, crd) == ((void*)0))
    {
        msg_Err (crd, "TLS client plugin not available");
        vlc_object_delete(crd);
        return ((void*)0);
    }

    return crd;
}
