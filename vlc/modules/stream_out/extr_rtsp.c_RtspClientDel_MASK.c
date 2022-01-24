#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sessionv; int /*<<< orphan*/  sessionc; } ;
typedef  TYPE_1__ rtsp_stream_t ;
struct TYPE_9__ {int trackc; struct TYPE_9__* trackv; } ;
typedef  TYPE_2__ rtsp_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static
void FUNC3( rtsp_stream_t *rtsp, rtsp_session_t *session )
{
    int i;
    FUNC1( rtsp->sessionc, rtsp->sessionv, session );

    for( i = 0; i < session->trackc; i++ )
        FUNC0( &session->trackv[i] );

    FUNC2( session->trackv );
    FUNC2( session );
}