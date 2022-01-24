#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_7__ {int alert_message_time_remaining; int event_duration; int alert_priority; void* psz_alert_text; int /*<<< orphan*/  event_start_time; void* psz_nature_of_activation; scalar_t__* psz_eas_event_code; scalar_t__* rgc_eas_originator_code; void* i_eas_event_id; } ;
typedef  TYPE_1__ scte18_cea_t ;
struct TYPE_8__ {int* p_buffer; size_t i_buffer; } ;
typedef  TYPE_2__ block_t ;
typedef  int /*<<< orphan*/  atsc_a65_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  EAS_PRIORITY_HIGH 132 
#define  EAS_PRIORITY_LOW 131 
#define  EAS_PRIORITY_MAX 130 
#define  EAS_PRIORITY_MEDIUM 129 
#define  EAS_PRIORITY_TEST 128 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 void* FUNC2 (int const*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int const*,size_t) ; 
 scalar_t__* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 () ; 

__attribute__((used)) static scte18_cea_t * FUNC8( atsc_a65_handle_t *p_handle, const block_t *p_block )
{
    size_t len;
    scte18_cea_t *p_cea = FUNC7();
    if( !p_cea )
        return NULL;

    const uint8_t *p_buffer = p_block->p_buffer;
    size_t i_buffer = p_block->i_buffer;

    if( i_buffer < 34 || p_buffer[0] != 0 )
        goto error;

    FUNC0(1);

    p_cea->i_eas_event_id = FUNC2( p_buffer );
    FUNC0(2);

    FUNC5( p_cea->rgc_eas_originator_code, p_buffer, 3 );
    FUNC0(3);

    len = p_buffer[0];
    if( i_buffer < 23 + len )
        goto error;
    p_cea->psz_eas_event_code = FUNC4( len + 1 );
    FUNC5( p_cea->psz_eas_event_code, &p_buffer[1], len );
    p_cea->psz_eas_event_code[len] = 0;
    FUNC0( len + 1 );

    len = p_buffer[0];
    if( i_buffer < len + 22 )
        goto error;
    p_cea->psz_nature_of_activation = FUNC3( p_handle, &p_buffer[1], len );
    FUNC0(1 + len);

    if( i_buffer < 21 )
        goto error;
    p_cea->alert_message_time_remaining = p_buffer[0];
    FUNC0(1);

    p_cea->event_start_time = FUNC1( p_buffer );
    FUNC0(4);

    p_cea->event_duration = FUNC2( p_buffer );
    if( p_cea->event_duration != 0 && ( p_cea->event_duration < 15 || p_cea->event_duration > 6000 ) )
        goto error;
    FUNC0(2);

    p_cea->alert_priority = p_buffer[1] & 0x0f;
    switch( p_cea->alert_priority )
    {
        case EAS_PRIORITY_TEST:
        case EAS_PRIORITY_LOW:
        case EAS_PRIORITY_MEDIUM:
        case EAS_PRIORITY_HIGH:
        case EAS_PRIORITY_MAX:
            break;
        default:
            goto error;
    }

    FUNC0(2);

    FUNC0(2); //OOB_ID

    FUNC0(2); //
    FUNC0(2); //

    FUNC0(2); //audio_OOB_ID

    len = FUNC2( p_buffer );
    if( i_buffer < len + 2 )
        goto error;
    p_cea->psz_alert_text = FUNC3( p_handle, &p_buffer[2], len );

    return p_cea;

error:
    FUNC6( p_cea );
    return NULL;
}