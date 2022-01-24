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
typedef  size_t vlc_tick_t ;
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 

void FUNC1( void* p_video_data, uint8_t* p_pixel_buffer, int width, int height,
                                     int pixel_pitch, size_t size, vlc_tick_t pts )
{
    FUNC0( p_video_data ); FUNC0( p_pixel_buffer );
    FUNC0( width ); FUNC0( height );
    FUNC0( pixel_pitch ); FUNC0( size ); FUNC0( pts );
}