
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; TYPE_1__* catch; } ;
typedef TYPE_2__ httpd_url_t ;
typedef int httpd_callback_t ;
typedef int httpd_callback_sys_t ;
struct TYPE_4__ {int * p_sys; int cb; } ;


 int VLC_SUCCESS ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int httpd_UrlCatch(httpd_url_t *url, int i_msg, httpd_callback_t cb,
                    httpd_callback_sys_t *p_sys)
{
    vlc_mutex_lock(&url->lock);
    url->catch[i_msg].cb = cb;
    url->catch[i_msg].p_sys= p_sys;
    vlc_mutex_unlock(&url->lock);

    return VLC_SUCCESS;
}
