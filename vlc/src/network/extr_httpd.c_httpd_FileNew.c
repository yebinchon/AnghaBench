
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int httpd_host_t ;
struct TYPE_5__ {int url; int mime; int * p_sys; int pf_fill; } ;
typedef TYPE_1__ httpd_file_t ;
typedef int httpd_file_sys_t ;
typedef int httpd_file_callback_t ;
typedef int httpd_callback_sys_t ;


 int HTTPD_MSG_GET ;
 int HTTPD_MSG_HEAD ;
 int HTTPD_MSG_POST ;
 int free (TYPE_1__*) ;
 int httpd_FileCallBack ;
 int httpd_UrlCatch (int ,int ,int ,int *) ;
 int httpd_UrlNew (int *,char const*,char const*,char const*) ;
 TYPE_1__* malloc (int) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ unlikely (int ) ;
 char* vlc_mime_Ext2Mime (char const*) ;

httpd_file_t *httpd_FileNew(httpd_host_t *host,
                             const char *psz_url, const char *psz_mime,
                             const char *psz_user, const char *psz_password,
                             httpd_file_callback_t pf_fill,
                             httpd_file_sys_t *p_sys)
{
    const char *mime = psz_mime;
    if (mime == ((void*)0) || mime[0] == '\0')
        mime = vlc_mime_Ext2Mime(psz_url);

    size_t mimelen = strlen(mime);
    httpd_file_t *file = malloc(sizeof(*file) + mimelen);
    if (unlikely(file == ((void*)0)))
        return ((void*)0);

    file->url = httpd_UrlNew(host, psz_url, psz_user, psz_password);
    if (!file->url) {
        free(file);
        return ((void*)0);
    }

    file->pf_fill = pf_fill;
    file->p_sys = p_sys;
    memcpy(file->mime, mime, mimelen + 1);

    httpd_UrlCatch(file->url, HTTPD_MSG_HEAD, httpd_FileCallBack,
                    (httpd_callback_sys_t*)file);
    httpd_UrlCatch(file->url, HTTPD_MSG_GET, httpd_FileCallBack,
                    (httpd_callback_sys_t*)file);
    httpd_UrlCatch(file->url, HTTPD_MSG_POST, httpd_FileCallBack,
                    (httpd_callback_sys_t*)file);

    return file;
}
