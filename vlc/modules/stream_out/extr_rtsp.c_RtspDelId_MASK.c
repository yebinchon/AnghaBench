#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int sessionc; int /*<<< orphan*/  lock; TYPE_4__** sessionv; } ;
typedef  TYPE_1__ rtsp_stream_t ;
struct TYPE_11__ {int /*<<< orphan*/  url; } ;
typedef  TYPE_2__ rtsp_stream_id_t ;
struct TYPE_12__ {TYPE_2__* id; } ;
typedef  TYPE_3__ rtsp_strack_t ;
struct TYPE_13__ {int trackc; TYPE_3__* trackv; } ;
typedef  TYPE_4__ rtsp_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6( rtsp_stream_t *rtsp, rtsp_stream_id_t *id )
{
    FUNC3( id->url );

    FUNC4( &rtsp->lock );
    for( int i = 0; i < rtsp->sessionc; i++ )
    {
        rtsp_session_t *ses = rtsp->sessionv[i];

        for( int j = 0; j < ses->trackc; j++ )
        {
            if( ses->trackv[j].id == id )
            {
                rtsp_strack_t *tr = ses->trackv + j;
                FUNC0( tr );
                FUNC1(ses->trackc, ses->trackv, j);
            }
        }
    }

    FUNC5( &rtsp->lock );
    FUNC2( id );
}