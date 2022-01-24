#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_11__ {TYPE_1__* p_iinf; } ;
struct TYPE_12__ {int i_size; int i_pos; TYPE_2__ data; } ;
struct TYPE_10__ {scalar_t__ i_entry_count; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  MP4_Box_data_iinf_t ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int i_read ; 
 size_t FUNC12 (int /*<<< orphan*/ *,scalar_t__ const**,int) ; 

__attribute__((used)) static int FUNC13( stream_t *p_stream, MP4_Box_t *p_box )
{
    const uint8_t *p_versionpeek;
    size_t i_peek = FUNC12( p_stream, &p_versionpeek, 9 );
    if( i_peek < 9 )
        return 0;

    size_t i_header = 12 + (( p_versionpeek[8] == 0 ) ? 2 : 4);
    FUNC6( MP4_Box_data_iinf_t, i_header, NULL );
    if( i_read + 8 < i_header )
        FUNC7( 0 );

    uint8_t i_version;
    uint32_t i_flags;
    FUNC2( i_version );
    FUNC4( i_flags ); FUNC10(i_flags);
    if( i_version > 2 )
        FUNC7( 0 );

    if( i_version == 0 )
        FUNC3( p_box->data.p_iinf->i_entry_count );
    else
        FUNC5( p_box->data.p_iinf->i_entry_count );

    FUNC11( i_read == 0 );

    uint32_t i = 0;
    uint64_t i_remain = p_box->i_size - i_header;
    while ( i_remain > 8 && i < p_box->data.p_iinf->i_entry_count )
    {
        MP4_Box_t *p_childbox = FUNC8( p_stream, p_box );
        if( !p_childbox || i_remain < p_childbox->i_size )
        {
            FUNC1( p_childbox );
            p_box->data.p_iinf->i_entry_count = i;
            break;
        }

        FUNC0( p_box, p_childbox );
        i_remain -= p_childbox->i_size;
        i++;
    }

    if ( FUNC9( p_stream, p_box->i_pos + p_box->i_size ) )
        FUNC7( 0 );

    FUNC7( 1 );
}