#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ sessionc; scalar_t__ timeout; int /*<<< orphan*/  lock; struct TYPE_5__* psz_path; int /*<<< orphan*/  timer; int /*<<< orphan*/ * sessionv; scalar_t__ host; scalar_t__ url; } ;
typedef  TYPE_1__ rtsp_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6( rtsp_stream_t *rtsp )
{
    if( rtsp->url )
        FUNC3( rtsp->url );

    if( rtsp->host )
        FUNC2( rtsp->host );

    while( rtsp->sessionc > 0 )
        FUNC0( rtsp, rtsp->sessionv[0] );

    if (rtsp->timeout != 0)
        FUNC5(rtsp->timer);

    FUNC1( rtsp->psz_path );
    FUNC4( &rtsp->lock );

    FUNC1( rtsp );
}