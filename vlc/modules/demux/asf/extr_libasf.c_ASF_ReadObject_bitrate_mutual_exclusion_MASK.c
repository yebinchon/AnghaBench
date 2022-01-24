#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_guid_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int ssize_t ;
struct TYPE_5__ {scalar_t__ i_object_size; scalar_t__ exclusion_type; size_t i_stream_number_count; scalar_t__* pi_stream_numbers; } ;
struct TYPE_4__ {TYPE_2__ bitrate_mutual_exclusion; } ;
typedef  TYPE_1__ asf_object_t ;
typedef  TYPE_2__ asf_object_bitrate_mutual_exclusion_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ASF_MAX_STREAMNUMBER ; 
 size_t ASF_OBJECT_COMMON_SIZE ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ BITRATE ; 
 scalar_t__ INT32_MAX ; 
 scalar_t__ LANGUAGE ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  asf_guid_mutex_bitrate ; 
 int /*<<< orphan*/  asf_guid_mutex_language ; 
 scalar_t__* FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,scalar_t__) ; 

__attribute__((used)) static int FUNC8( stream_t *s, asf_object_t *p_obj )
{
    asf_object_bitrate_mutual_exclusion_t *p_ex = &p_obj->bitrate_mutual_exclusion;
    const uint8_t *p_peek, *p_data;

    if( p_ex->i_object_size > INT32_MAX )
        return VLC_EGENERIC;

    ssize_t i_peek = FUNC7( s, &p_peek, p_ex->i_object_size );
    if( i_peek < 42 )
       return VLC_EGENERIC;

    p_data = &p_peek[ASF_OBJECT_COMMON_SIZE];

    if( !FUNC0( 16 + 2 * sizeof(uint16_t) ) ) /* at least one entry */
        return VLC_EGENERIC;

    if ( FUNC5( (const vlc_guid_t *) p_data, &asf_guid_mutex_language ) )
        p_ex->exclusion_type = LANGUAGE;
    else if ( FUNC5( (const vlc_guid_t *) p_data, &asf_guid_mutex_bitrate ) )
        p_ex->exclusion_type = BITRATE;
    FUNC2( 16 );

    p_ex->i_stream_number_count = FUNC1();
    p_ex->pi_stream_numbers = FUNC3( p_ex->i_stream_number_count, sizeof(uint16_t) );
    if ( ! p_ex->pi_stream_numbers )
    {
        p_ex->i_stream_number_count = 0;
        return VLC_ENOMEM;
    }

    for( uint16_t i = 0; i < p_ex->i_stream_number_count; i++ )
    {
        if( !FUNC0(2) )
            break;
        p_ex->pi_stream_numbers[i] = FUNC1();
        if ( p_ex->pi_stream_numbers[i] > ASF_MAX_STREAMNUMBER )
        {
            FUNC4( p_ex->pi_stream_numbers );
            return VLC_EGENERIC;
        }
    }

#ifdef ASF_DEBUG
    msg_Dbg( s, "read \"bitrate exclusion object\" type %s",
             p_ex->exclusion_type == LANGUAGE ? "Language" :
             ( p_ex->exclusion_type == BITRATE ) ? "Bitrate" : "Unknown"
    );
    for( uint16_t i = 0; i < p_ex->i_stream_number_count; i++ )
        msg_Dbg( s, "  - stream=%u", p_ex->pi_stream_numbers[i] );
#endif

    return VLC_SUCCESS;
}