
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_server_t ;
typedef int vlc_object_t ;


 int msg_Err (int *,char*) ;
 int tls_server_load ;
 scalar_t__ unlikely (int ) ;
 int * vlc_custom_create (int *,int,char*) ;
 int * vlc_module_load (int *,char*,int *,int,int ,int *,char const*,char const*) ;
 int vlc_object_delete (int *) ;

vlc_tls_server_t *
vlc_tls_ServerCreate (vlc_object_t *obj, const char *cert_path,
                      const char *key_path)
{
    vlc_tls_server_t *srv = vlc_custom_create(obj, sizeof (*srv),
                                              "tls server");
    if (unlikely(srv == ((void*)0)))
        return ((void*)0);

    if (key_path == ((void*)0))
        key_path = cert_path;

    if (vlc_module_load(srv, "tls server", ((void*)0), 0,
                        tls_server_load, srv, cert_path, key_path) == ((void*)0))
    {
        msg_Err (srv, "TLS server plugin not available");
        vlc_object_delete(srv);
        return ((void*)0);
    }

    return srv;
}
