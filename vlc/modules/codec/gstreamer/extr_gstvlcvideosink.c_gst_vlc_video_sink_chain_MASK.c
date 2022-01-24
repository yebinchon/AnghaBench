#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GstFlowReturn ;
typedef  int /*<<< orphan*/  GstBuffer ;
typedef  int /*<<< orphan*/  GstBaseSink ;

/* Variables and functions */
 int /*<<< orphan*/  GST_FLOW_OK ; 
 size_t SIGNAL_NEW_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * gst_vlc_video_sink_signals ; 

__attribute__((used)) static GstFlowReturn FUNC1( GstBaseSink *p_bsink,
        GstBuffer *p_buffer )
{
    FUNC0( p_bsink,
        gst_vlc_video_sink_signals[ SIGNAL_NEW_BUFFER ], 0, p_buffer );

    return GST_FLOW_OK;
}