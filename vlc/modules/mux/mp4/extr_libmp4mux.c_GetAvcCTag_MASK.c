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
typedef  int /*<<< orphan*/  h264_sequence_parameter_set_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 int const PROFILE_H264_HIGH ; 
 int const PROFILE_H264_HIGH_10 ; 
 int const PROFILE_H264_HIGH_422 ; 
 int const PROFILE_H264_HIGH_444 ; 
 int const PROFILE_H264_HIGH_444_PREDICTIVE ; 
 int const PROFILE_H264_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int const*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int const*,size_t,int const**,size_t*,int const**,size_t*,int const**,size_t*) ; 
 int /*<<< orphan*/ * FUNC5 (int const*,size_t,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bo_t *FUNC8(const uint8_t *p_extra, size_t i_extra)
{
    bo_t    *avcC = FUNC3("avcC");/* FIXME use better value */
    if(!avcC)
        return NULL;
    const uint8_t *p_sps, *p_pps, *p_ext;
    size_t i_sps_size, i_pps_size, i_ext_size;

    if(! FUNC4(p_extra, i_extra,
                        &p_sps, &i_sps_size,
                        &p_pps, &i_pps_size,
                        &p_ext, &i_ext_size ) )
    {
        p_sps = p_pps = p_ext = NULL;
        i_sps_size = i_pps_size = i_ext_size = 0;
    }

    FUNC1(avcC, 1);      /* configuration version */
    FUNC1(avcC, i_sps_size > 3 ? p_sps[1] : PROFILE_H264_MAIN);
    FUNC1(avcC, i_sps_size > 3 ? p_sps[2] : 64);
    FUNC1(avcC, i_sps_size > 3 ? p_sps[3] : 30);       /* level, 5.1 */
    FUNC1(avcC, 0xff);   /* 0b11111100 | lengthsize = 0x11 */

    FUNC1(avcC, 0xe0 | (i_sps_size > 0 ? 1 : 0));   /* 0b11100000 | sps_count */
    if (i_sps_size > 0) {
        FUNC0(avcC, i_sps_size);
        FUNC2(avcC, i_sps_size, p_sps);
    }

    FUNC1(avcC, (i_pps_size > 0 ? 1 : 0));   /* pps_count */
    if (i_pps_size > 0) {
        FUNC0(avcC, i_pps_size);
        FUNC2(avcC, i_pps_size, p_pps);
    }

    if( i_sps_size > 3 &&
       (p_sps[1] == PROFILE_H264_HIGH ||
        p_sps[1] == PROFILE_H264_HIGH_10 ||
        p_sps[1] == PROFILE_H264_HIGH_422 ||
        p_sps[1] == PROFILE_H264_HIGH_444 ||
        p_sps[1] == PROFILE_H264_HIGH_444_PREDICTIVE) )
    {
        h264_sequence_parameter_set_t *p_spsdata = FUNC5( p_sps, i_sps_size, true );
        if( p_spsdata )
        {
            uint8_t data[3];
            if( FUNC6( p_spsdata, &data[0], &data[1], &data[2]) )
            {
                FUNC1(avcC, 0xFC | data[0]);
                FUNC1(avcC, 0xF8 | (data[1] - 8));
                FUNC1(avcC, 0xF8 | (data[2] - 8));
                FUNC1(avcC, (i_ext_size > 0 ? 1 : 0));
                if (i_ext_size > 0) {
                    FUNC0(avcC, i_ext_size);
                    FUNC2(avcC, i_ext_size, p_ext);
                }
            }
            FUNC7( p_spsdata );
        }
    }

    return avcC;
}