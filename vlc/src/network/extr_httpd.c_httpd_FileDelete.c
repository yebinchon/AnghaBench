
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int url; int * p_sys; } ;
typedef TYPE_1__ httpd_file_t ;
typedef int httpd_file_sys_t ;


 int free (TYPE_1__*) ;
 int httpd_UrlDelete (int ) ;

httpd_file_sys_t *httpd_FileDelete(httpd_file_t *file)
{
    httpd_file_sys_t *p_sys = file->p_sys;

    httpd_UrlDelete(file->url);
    free(file);
    return p_sys;
}
