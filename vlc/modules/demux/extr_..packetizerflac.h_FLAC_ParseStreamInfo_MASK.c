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
typedef  int uint8_t ;
struct flac_stream_info {int min_framesize; int max_framesize; int sample_rate; int channels; int bits_per_sample; int total_samples; void* max_blocksize; void* min_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAC_FRAME_SIZE_MIN ; 
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 void* FUNC2 (int const*) ; 
 int FUNC3 (int) ; 
 void* FUNC4 (void*,int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6( const uint8_t *p_buf,
                                         struct flac_stream_info *stream_info )
{
    stream_info->min_blocksize = FUNC2( &p_buf[0] );
    stream_info->min_blocksize = FUNC4( stream_info->min_blocksize, 16, 65535 );

    stream_info->max_blocksize = FUNC2( &p_buf[2] );
    stream_info->max_blocksize = FUNC4( stream_info->max_blocksize, 16, 65535 );

    stream_info->min_framesize = FUNC0( &p_buf[3] ) & 0x00FFFFFF;
    stream_info->min_framesize = FUNC5( stream_info->min_framesize, FLAC_FRAME_SIZE_MIN );

    stream_info->max_framesize = FUNC0( &p_buf[6] ) & 0x00FFFFFF;

    stream_info->sample_rate = FUNC0( &p_buf[10] ) >> 12;
    stream_info->channels = (p_buf[12] & 0x0F >> 1) + 1;
    stream_info->bits_per_sample = (((p_buf[12] & 0x01) << 4) | p_buf[13] >> 4) + 1;

    stream_info->total_samples = FUNC1(&p_buf[4+6]) & ((FUNC3(1)<<36)-1);
}