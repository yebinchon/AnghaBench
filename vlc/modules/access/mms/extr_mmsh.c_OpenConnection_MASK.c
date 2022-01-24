#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  i_port; int /*<<< orphan*/  psz_host; } ;
typedef  TYPE_1__ vlc_url_t ;
typedef  int /*<<< orphan*/  vlc_tls_t ;
struct vlc_memstream {scalar_t__ length; int /*<<< orphan*/  ptr; } ;
struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_10__ {int /*<<< orphan*/ * stream; TYPE_1__ url; TYPE_1__ proxy; scalar_t__ b_proxy; } ;
typedef  TYPE_3__ access_sys_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_memstream*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9( stream_t *p_access,
                           struct vlc_memstream *restrict stream )
{
    access_sys_t *p_sys = p_access->p_sys;
    const vlc_url_t *srv = p_sys->b_proxy ? &p_sys->proxy : &p_sys->url;

    /* XXX: This is useless: HTTP/1.0 closes connection by default */
    FUNC5( stream, "Connection: Close\r\n" );

    FUNC5( stream, "\r\n" ); /* end of HTTP request header */

    if( FUNC4( stream ) )
        return VLC_ENOMEM;

    vlc_tls_t *sock = FUNC7( FUNC0(p_access),
                                             srv->psz_host, srv->i_port );
    if( sock == NULL )
    {
        FUNC1( stream->ptr );
        return VLC_EGENERIC;
    }

    FUNC2( p_access, "sending request:\n%s", stream->ptr );

    ssize_t val = FUNC8( sock, stream->ptr, stream->length );
    FUNC1( stream->ptr );
    if( val < (ssize_t)stream->length )
    {
        FUNC3( p_access, "failed to send request" );
        FUNC6( sock );
        stream = NULL;
    }

    p_sys->stream = sock;
    return (sock != NULL) ? VLC_SUCCESS : VLC_EGENERIC;
}