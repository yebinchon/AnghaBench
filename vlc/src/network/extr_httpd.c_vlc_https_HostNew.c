
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_server_t ;
typedef int vlc_object_t ;
typedef int httpd_host_t ;


 int free (char*) ;
 int * httpd_HostCreate (int *,char*,char*,int *) ;
 int msg_Err (int *,char*,...) ;
 char* var_InheritString (int *,char*) ;
 int * vlc_tls_ServerCreate (int *,char*,char*) ;

httpd_host_t *vlc_https_HostNew(vlc_object_t *obj)
{
    char *cert = var_InheritString(obj, "http-cert");
    if (!cert) {
        msg_Err(obj, "HTTP/TLS certificate not specified!");
        return ((void*)0);
    }

    char *key = var_InheritString(obj, "http-key");
    vlc_tls_server_t *tls = vlc_tls_ServerCreate(obj, cert, key);

    if (!tls) {
        msg_Err(obj, "HTTP/TLS certificate error (%s and %s)",
                 cert, key ? key : cert);
        free(key);
        free(cert);
        return ((void*)0);
    }
    free(key);
    free(cert);

    return httpd_HostCreate(obj, "http-host", "https-port", tls);
}
