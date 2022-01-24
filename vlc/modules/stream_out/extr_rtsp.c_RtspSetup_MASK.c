#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vod_media_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {scalar_t__ timeout; int /*<<< orphan*/ * url; int /*<<< orphan*/ * psz_path; int /*<<< orphan*/ * host; int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; int /*<<< orphan*/ * vod_media; int /*<<< orphan*/ * owner; } ;
typedef  TYPE_1__ rtsp_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  HTTPD_MSG_DESCRIBE ; 
 int /*<<< orphan*/  HTTPD_MSG_GETPARAMETER ; 
 int /*<<< orphan*/  HTTPD_MSG_PAUSE ; 
 int /*<<< orphan*/  HTTPD_MSG_PLAY ; 
 int /*<<< orphan*/  HTTPD_MSG_SETUP ; 
 int /*<<< orphan*/  HTTPD_MSG_TEARDOWN ; 
 int /*<<< orphan*/  RtspCallback ; 
 int /*<<< orphan*/  RtspTimeOut ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

rtsp_stream_t *FUNC16( vlc_object_t *owner, vod_media_t *media,
                          const char *path )
{
    rtsp_stream_t *rtsp = FUNC3( 1, sizeof( *rtsp ) );

    if( FUNC9(rtsp == NULL) )
        return NULL;

    rtsp->owner = owner;
    rtsp->vod_media = media;
    FUNC12( &rtsp->lock );

    rtsp->timeout = FUNC14(FUNC2(0,FUNC10(owner, "rtsp-timeout")));
    if (rtsp->timeout != 0)
    {
        if (FUNC15(&rtsp->timer, RtspTimeOut, rtsp))
            goto error;
    }

    rtsp->psz_path = FUNC8( (path != NULL) ? path : "/" );
    if( rtsp->psz_path == NULL )
        goto error;

    FUNC7( owner, "RTSP stream at %s", rtsp->psz_path );

    rtsp->host = FUNC13( FUNC1(owner) );
    if( rtsp->host == NULL )
        goto error;

    char *user = FUNC11(owner, "sout-rtsp-user");
    char *pwd = FUNC11(owner, "sout-rtsp-pwd");

    rtsp->url = FUNC6( rtsp->host, rtsp->psz_path, user, pwd );
    FUNC4(user);
    FUNC4(pwd);
    if( rtsp->url == NULL )
        goto error;

    FUNC5( rtsp->url, HTTPD_MSG_DESCRIBE, RtspCallback, (void*)rtsp );
    FUNC5( rtsp->url, HTTPD_MSG_SETUP,    RtspCallback, (void*)rtsp );
    FUNC5( rtsp->url, HTTPD_MSG_PLAY,     RtspCallback, (void*)rtsp );
    FUNC5( rtsp->url, HTTPD_MSG_PAUSE,    RtspCallback, (void*)rtsp );
    FUNC5( rtsp->url, HTTPD_MSG_GETPARAMETER, RtspCallback,
                    (void*)rtsp );
    FUNC5( rtsp->url, HTTPD_MSG_TEARDOWN, RtspCallback, (void*)rtsp );
    return rtsp;

error:
    FUNC0( rtsp );
    return NULL;
}