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
struct TYPE_5__ {scalar_t__ i_object_size; scalar_t__ exclusion_type; size_t i_stream_number_count; char** pi_stream_number; } ;
struct TYPE_4__ {TYPE_2__ advanced_mutual_exclusion; } ;
typedef  TYPE_1__ asf_object_t ;
typedef  TYPE_2__ asf_object_advanced_mutual_exclusion_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* ASF_MAX_STREAMNUMBER ; 
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
 char** FUNC3 (size_t,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,scalar_t__) ; 

__attribute__((used)) static int FUNC7( stream_t *s,
                                                     asf_object_t *p_obj)
{
    asf_object_advanced_mutual_exclusion_t *p_ae = &p_obj->advanced_mutual_exclusion;
    const uint8_t *p_peek, *p_data;
    uint16_t i;

    if( p_ae->i_object_size > INT32_MAX )
        return VLC_EGENERIC;

    ssize_t i_peek = FUNC6( s, &p_peek, p_ae->i_object_size );
    if( i_peek < 42 )
       return VLC_EGENERIC;

    p_data = &p_peek[ASF_OBJECT_COMMON_SIZE];

    if( !FUNC0( 16 + 2 * sizeof(uint16_t) ) ) /* at least one entry */
        return VLC_EGENERIC;

    if ( FUNC4( (const vlc_guid_t *) p_data, &asf_guid_mutex_language ) )
        p_ae->exclusion_type = LANGUAGE;
    else if ( FUNC4( (const vlc_guid_t *) p_data, &asf_guid_mutex_bitrate ) )
        p_ae->exclusion_type = BITRATE;
    FUNC2( 16 );

    p_ae->i_stream_number_count = FUNC1();
    p_ae->pi_stream_number = FUNC3( p_ae->i_stream_number_count, sizeof(uint16_t) );
    if ( !p_ae->pi_stream_number )
    {
        p_ae->i_stream_number_count = 0;
        return VLC_ENOMEM;
    }

    for( i = 0; i < p_ae->i_stream_number_count; i++ )
    {
        if( !FUNC0(2) )
            break;
        p_ae->pi_stream_number[i] = FUNC1();
        if ( p_ae->pi_stream_number[i] > ASF_MAX_STREAMNUMBER )
            break;
    }
    p_ae->i_stream_number_count = i;

#ifdef ASF_DEBUG
    msg_Dbg( s, "read \"advanced mutual exclusion object\" type %s",
             p_ae->exclusion_type == LANGUAGE ? "Language" :
             ( p_ae->exclusion_type == BITRATE ) ? "Bitrate" : "Unknown"
    );
    for( i = 0; i < p_ae->i_stream_number_count; i++ )
        msg_Dbg( s, "  - stream=%u", p_ae->pi_stream_number[i] );
#endif
    return VLC_SUCCESS;
}