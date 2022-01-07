
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vod_media_t ;
typedef int vlc_object_t ;
struct TYPE_6__ {scalar_t__ timeout; int * url; int * psz_path; int * host; int timer; int lock; int * vod_media; int * owner; } ;
typedef TYPE_1__ rtsp_stream_t ;


 int HTTPD_MSG_DESCRIBE ;
 int HTTPD_MSG_GETPARAMETER ;
 int HTTPD_MSG_PAUSE ;
 int HTTPD_MSG_PLAY ;
 int HTTPD_MSG_SETUP ;
 int HTTPD_MSG_TEARDOWN ;
 int RtspCallback ;
 int RtspTimeOut ;
 int RtspUnsetup (TYPE_1__*) ;
 int VLC_OBJECT (int *) ;
 int __MAX (int ,int ) ;
 TYPE_1__* calloc (int,int) ;
 int free (char*) ;
 int httpd_UrlCatch (int *,int ,int ,void*) ;
 int * httpd_UrlNew (int *,int *,char*,char*) ;
 int msg_Dbg (int *,char*,int *) ;
 int * strdup (char const*) ;
 scalar_t__ unlikely (int ) ;
 int var_InheritInteger (int *,char*) ;
 char* var_InheritString (int *,char*) ;
 int vlc_mutex_init (int *) ;
 int * vlc_rtsp_HostNew (int ) ;
 scalar_t__ vlc_tick_from_sec (int ) ;
 scalar_t__ vlc_timer_create (int *,int ,TYPE_1__*) ;

rtsp_stream_t *RtspSetup( vlc_object_t *owner, vod_media_t *media,
                          const char *path )
{
    rtsp_stream_t *rtsp = calloc( 1, sizeof( *rtsp ) );

    if( unlikely(rtsp == ((void*)0)) )
        return ((void*)0);

    rtsp->owner = owner;
    rtsp->vod_media = media;
    vlc_mutex_init( &rtsp->lock );

    rtsp->timeout = vlc_tick_from_sec(__MAX(0,var_InheritInteger(owner, "rtsp-timeout")));
    if (rtsp->timeout != 0)
    {
        if (vlc_timer_create(&rtsp->timer, RtspTimeOut, rtsp))
            goto error;
    }

    rtsp->psz_path = strdup( (path != ((void*)0)) ? path : "/" );
    if( rtsp->psz_path == ((void*)0) )
        goto error;

    msg_Dbg( owner, "RTSP stream at %s", rtsp->psz_path );

    rtsp->host = vlc_rtsp_HostNew( VLC_OBJECT(owner) );
    if( rtsp->host == ((void*)0) )
        goto error;

    char *user = var_InheritString(owner, "sout-rtsp-user");
    char *pwd = var_InheritString(owner, "sout-rtsp-pwd");

    rtsp->url = httpd_UrlNew( rtsp->host, rtsp->psz_path, user, pwd );
    free(user);
    free(pwd);
    if( rtsp->url == ((void*)0) )
        goto error;

    httpd_UrlCatch( rtsp->url, HTTPD_MSG_DESCRIBE, RtspCallback, (void*)rtsp );
    httpd_UrlCatch( rtsp->url, HTTPD_MSG_SETUP, RtspCallback, (void*)rtsp );
    httpd_UrlCatch( rtsp->url, HTTPD_MSG_PLAY, RtspCallback, (void*)rtsp );
    httpd_UrlCatch( rtsp->url, HTTPD_MSG_PAUSE, RtspCallback, (void*)rtsp );
    httpd_UrlCatch( rtsp->url, HTTPD_MSG_GETPARAMETER, RtspCallback,
                    (void*)rtsp );
    httpd_UrlCatch( rtsp->url, HTTPD_MSG_TEARDOWN, RtspCallback, (void*)rtsp );
    return rtsp;

error:
    RtspUnsetup( rtsp );
    return ((void*)0);
}
