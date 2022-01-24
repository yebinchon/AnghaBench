#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int uint8_t ;
struct TYPE_5__ {TYPE_2__* p_dec_config; } ;
typedef  TYPE_1__ od_read_params_t ;
struct TYPE_6__ {int i_streamType; int /*<<< orphan*/  i_extra; void* i_objectTypeIndication; } ;
typedef  TYPE_2__ decoder_config_descriptor_t ;

/* Variables and functions */
 void* FUNC0 (unsigned int*,int const**,int) ; 
 int /*<<< orphan*/  ODTag_DecSpecificDescr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int*,int const**,int /*<<< orphan*/ ,int,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3( vlc_object_t *p_object, unsigned i_data, const uint8_t *p_data,
                                    od_read_params_t params )
{
    decoder_config_descriptor_t *p_dec_config = params.p_dec_config;

    if( i_data < 13 )
        return false;

    p_dec_config->i_objectTypeIndication = FUNC0( &i_data, &p_data, 1 );
    uint8_t i_flags = FUNC0( &i_data, &p_data, 1 );
    p_dec_config->i_streamType = i_flags >> 2;

    FUNC0( &i_data, &p_data, 3 ); /* bufferSizeDB */
    FUNC0( &i_data, &p_data, 4 ); /* maxBitrate */
    FUNC0( &i_data, &p_data, 4 ); /* avgBitrate */

    /* DecoderSpecificDescr */
    FUNC1( p_object, &i_data, &p_data,
                   ODTag_DecSpecificDescr, 1, params );

    FUNC2( p_object, "   * read decoder objecttype: %x streamtype:%x extra: %u",
               p_dec_config->i_objectTypeIndication, p_dec_config->i_streamType, p_dec_config->i_extra );
    /* ProfileLevelIndicator [0..255] */
    return true;
}