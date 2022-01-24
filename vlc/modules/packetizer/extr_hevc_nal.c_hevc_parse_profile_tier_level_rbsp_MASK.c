#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {int sublayer_profile_present_flag; int sublayer_level_present_flag; void** sub_layer_level_idc; int /*<<< orphan*/ * sub_layer; void* general_level_idc; int /*<<< orphan*/  general; } ;
typedef  TYPE_1__ hevc_profile_tier_level_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4( bs_t *p_bs, bool profile_present,
                                                uint8_t max_num_sub_layers_minus1,
                                                hevc_profile_tier_level_t *p_ptl )
{
    if( profile_present && !FUNC3( p_bs, &p_ptl->general ) )
        return false;

    if( FUNC2( p_bs ) < 8)
        return false;

    p_ptl->general_level_idc = FUNC0( p_bs, 8 );

    if( max_num_sub_layers_minus1 > 0 )
    {
        if( FUNC2( p_bs ) < 16 )
            return false;

        for( uint8_t i=0; i< 8; i++ )
        {
            if( i < max_num_sub_layers_minus1 )
            {
                if( FUNC1( p_bs ) )
                    p_ptl->sublayer_profile_present_flag |= (0x80 >> i);
                if( FUNC1( p_bs ) )
                    p_ptl->sublayer_level_present_flag |= (0x80 >> i);
            }
            else
                FUNC0( p_bs, 2 );
        }

        for( uint8_t i=0; i < max_num_sub_layers_minus1; i++ )
        {
            if( ( p_ptl->sublayer_profile_present_flag & (0x80 >> i) ) &&
                ! FUNC3( p_bs, &p_ptl->sub_layer[i] ) )
                return false;

            if( p_ptl->sublayer_profile_present_flag & (0x80 >> i) )
            {
                if( FUNC2( p_bs ) < 8 )
                    return false;
                p_ptl->sub_layer_level_idc[i] = FUNC0( p_bs, 8 );
            }
        }
    }

    return true;
}