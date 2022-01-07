
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int url; } ;
typedef TYPE_1__ httpd_redirect_t ;


 int free (TYPE_1__*) ;
 int httpd_UrlDelete (int ) ;

void httpd_RedirectDelete(httpd_redirect_t *rdir)
{
    httpd_UrlDelete(rdir->url);
    free(rdir);
}
