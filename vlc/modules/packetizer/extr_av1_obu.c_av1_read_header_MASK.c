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
struct av1_header_info_s {void* spatial_id; void* temporal_id; void* obu_type; } ;
typedef  scalar_t__ obu_u1_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC4(bs_t *p_bs, struct av1_header_info_s *p_hdr)
{
    if(FUNC1(p_bs))
        return false;
    p_hdr->obu_type = FUNC0(p_bs, 4);
    const obu_u1_t obu_extension_flag = FUNC1(p_bs);
    const obu_u1_t obu_has_size_field = FUNC1(p_bs);
    if(FUNC1(p_bs))
        return false;
    if(obu_extension_flag)
    {
        if(FUNC2(p_bs) < 8)
            return false;
        p_hdr->temporal_id = FUNC0(p_bs, 3);
        p_hdr->spatial_id = FUNC0(p_bs, 2);
        FUNC3(p_bs, 3);
    }
    if(obu_has_size_field)
    {
        for (uint8_t i = 0; i < 8; i++)
        {
            if(FUNC2(p_bs) < 8)
                return false;
            uint8_t v = FUNC0(p_bs, 8);
            if (!(v & 0x80))
                break;
            if(i == 7)
                return false;
        }
    }
    return true;
}