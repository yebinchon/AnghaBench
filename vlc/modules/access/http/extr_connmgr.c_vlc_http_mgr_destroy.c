
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_mgr {int * creds; int * conn; } ;


 int free (struct vlc_http_mgr*) ;
 int vlc_http_mgr_release (struct vlc_http_mgr*,int *) ;
 int vlc_tls_ClientDelete (int *) ;

void vlc_http_mgr_destroy(struct vlc_http_mgr *mgr)
{
    if (mgr->conn != ((void*)0))
        vlc_http_mgr_release(mgr, mgr->conn);
    if (mgr->creds != ((void*)0))
        vlc_tls_ClientDelete(mgr->creds);
    free(mgr);
}
