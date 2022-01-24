#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_7__ {char* psz_ref; int /*<<< orphan*/  i_ref_type; } ;
struct TYPE_5__ {TYPE_4__* p_rdrf; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef  TYPE_2__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_rdrf_t ; 
 int /*<<< orphan*/  MP4_FreeBox_rdrf ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*,char*) ; 

__attribute__((used)) static int FUNC8( stream_t *p_stream, MP4_Box_t *p_box )
{
    uint32_t i_len;
    FUNC4( MP4_Box_data_rdrf_t, MP4_FreeBox_rdrf );

    FUNC3( p_box->data.p_rdrf );
    FUNC2( p_box->data.p_rdrf->i_ref_type );
    FUNC1( i_len );
    i_len++;

    if( i_len > 0 )
    {
        p_box->data.p_rdrf->psz_ref = FUNC6( i_len );
        if( p_box->data.p_rdrf->psz_ref == NULL )
            FUNC5( 0 );
        i_len--;

        for( unsigned i = 0; i < i_len; i++ )
        {
            FUNC0( p_box->data.p_rdrf->psz_ref[i] );
        }
        p_box->data.p_rdrf->psz_ref[i_len] = '\0';
    }
    else
    {
        p_box->data.p_rdrf->psz_ref = NULL;
    }

#ifdef MP4_VERBOSE
    msg_Dbg( p_stream,
            "read box: \"rdrf\" type:%4.4s ref %s",
            (char*)&p_box->data.p_rdrf->i_ref_type,
            p_box->data.p_rdrf->psz_ref );
#endif
    FUNC5( 1 );
}