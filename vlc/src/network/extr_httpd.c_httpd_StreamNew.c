
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_buffer_size; int i_buffer_pos; int i_buffer_last_pos; int b_has_keyframes; int url; int * p_http_headers; scalar_t__ i_http_headers; scalar_t__ i_last_keyframe_seen_pos; int p_buffer; int * p_header; scalar_t__ i_header; int psz_mime; int lock; } ;
typedef TYPE_1__ httpd_stream_t ;
typedef int httpd_host_t ;
typedef int httpd_callback_sys_t ;


 int HTTPD_MSG_GET ;
 int HTTPD_MSG_HEAD ;
 int HTTPD_MSG_POST ;
 int free (TYPE_1__*) ;
 int httpd_StreamCallBack ;
 int httpd_UrlCatch (int ,int ,int ,int *) ;
 int httpd_UrlNew (int *,char const*,char const*,char const*) ;
 TYPE_1__* malloc (int) ;
 char* vlc_mime_Ext2Mime (char const*) ;
 int vlc_mutex_init (int *) ;
 int xmalloc (int) ;
 int xstrdup (char const*) ;

httpd_stream_t *httpd_StreamNew(httpd_host_t *host,
                                 const char *psz_url, const char *psz_mime,
                                 const char *psz_user, const char *psz_password)
{
    httpd_stream_t *stream = malloc(sizeof(*stream));
    if (!stream)
        return ((void*)0);

    stream->url = httpd_UrlNew(host, psz_url, psz_user, psz_password);
    if (!stream->url) {
        free(stream);
        return ((void*)0);
    }

    vlc_mutex_init(&stream->lock);
    if (psz_mime == ((void*)0) || psz_mime[0] == '\0')
        psz_mime = vlc_mime_Ext2Mime(psz_url);
    stream->psz_mime = xstrdup(psz_mime);

    stream->i_header = 0;
    stream->p_header = ((void*)0);
    stream->i_buffer_size = 5000000;
    stream->p_buffer = xmalloc(stream->i_buffer_size);


    stream->i_buffer_pos = 1;
    stream->i_buffer_last_pos = 1;
    stream->b_has_keyframes = 0;
    stream->i_last_keyframe_seen_pos = 0;
    stream->i_http_headers = 0;
    stream->p_http_headers = ((void*)0);

    httpd_UrlCatch(stream->url, HTTPD_MSG_HEAD, httpd_StreamCallBack,
                    (httpd_callback_sys_t*)stream);
    httpd_UrlCatch(stream->url, HTTPD_MSG_GET, httpd_StreamCallBack,
                    (httpd_callback_sys_t*)stream);
    httpd_UrlCatch(stream->url, HTTPD_MSG_POST, httpd_StreamCallBack,
                    (httpd_callback_sys_t*)stream);

    return stream;
}
