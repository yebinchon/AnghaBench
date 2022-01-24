#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* psz_path; } ;
typedef  TYPE_1__ vlc_url_t ;
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ sout_stream_t ;
struct TYPE_9__ {int /*<<< orphan*/ * p_httpd_file; scalar_t__ p_httpd_host; } ;
typedef  TYPE_3__ sout_stream_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  HttpCallback ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3( sout_stream_t *p_stream, const vlc_url_t *url)
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    p_sys->p_httpd_host = FUNC2( FUNC0(p_stream) );
    if( p_sys->p_httpd_host )
    {
        p_sys->p_httpd_file = FUNC1( p_sys->p_httpd_host,
                                             url->psz_path ? url->psz_path : "/",
                                             "application/sdp",
                                             NULL, NULL,
                                             HttpCallback, (void*)p_sys );
    }
    if( p_sys->p_httpd_file == NULL )
    {
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}