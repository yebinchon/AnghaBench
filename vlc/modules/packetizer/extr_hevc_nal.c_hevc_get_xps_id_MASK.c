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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 scalar_t__ HEVC_NAL_PPS ; 
 scalar_t__ HEVC_NAL_SPS ; 
 scalar_t__ HEVC_PPS_ID_MAX ; 
 scalar_t__ HEVC_SPS_ID_MAX ; 
 scalar_t__ HEVC_VPS_ID_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__ const*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__ const*) ; 

bool FUNC4(const uint8_t *p_buf, size_t i_buf, uint8_t *pi_id)
{
    if(i_buf < 3)
        return false;
    /* No need to lookup convert from emulation for that data */
    uint8_t i_nal_type = FUNC3(p_buf);
    bs_t bs;
    FUNC0(&bs, &p_buf[2], i_buf - 2);
    if(i_nal_type == HEVC_NAL_PPS)
    {
        *pi_id = FUNC2( &bs );
        if(*pi_id > HEVC_PPS_ID_MAX)
            return false;
    }
    else
    {
        *pi_id = FUNC1( &bs, 4 );
        if(i_nal_type == HEVC_NAL_SPS)
        {
            if(*pi_id > HEVC_SPS_ID_MAX)
                return false;
        }
        else if(*pi_id > HEVC_VPS_ID_MAX)
            return false;
    }
    return true;
}