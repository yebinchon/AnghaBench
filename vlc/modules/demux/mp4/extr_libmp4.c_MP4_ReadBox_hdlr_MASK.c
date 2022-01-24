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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_7__ {scalar_t__ i_predefined; scalar_t__ i_handler_type; size_t* psz_name; } ;
struct TYPE_5__ {TYPE_4__* p_hdlr; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef  TYPE_2__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_hdlr_t ; 
 int /*<<< orphan*/  MP4_FreeBox_hdlr ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 size_t SSIZE_MAX ; 
 scalar_t__ FUNC6 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 size_t i_read ; 
 size_t* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (size_t*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  p_peek ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12( stream_t *p_stream, MP4_Box_t *p_box )
{
    int32_t i_reserved;
    FUNC7(i_reserved);

    FUNC4( MP4_Box_data_hdlr_t, MP4_FreeBox_hdlr );

    FUNC3( p_box->data.p_hdlr );

    FUNC2( p_box->data.p_hdlr->i_predefined );
    FUNC2( p_box->data.p_hdlr->i_handler_type );

    FUNC1( i_reserved );
    FUNC1( i_reserved );
    FUNC1( i_reserved );
    p_box->data.p_hdlr->psz_name = NULL;

    if( i_read >= SSIZE_MAX )
        FUNC5( 0 );

    if( i_read > 0 )
    {
        size_t i_copy;

        /* Yes, I love .mp4 :( */
        if( p_box->data.p_hdlr->i_predefined == FUNC6( 'm', 'h', 'l', 'r' ) )
        {
            uint8_t i_len;

            FUNC0( i_len );
            i_copy = (i_len <= i_read) ? i_len : i_read;
        }
        else
            i_copy = i_read;

        uint8_t *psz = p_box->data.p_hdlr->psz_name = FUNC8( i_copy + 1 );
        if( FUNC11( psz == NULL ) )
            FUNC5( 0 );

        FUNC9( psz, p_peek, i_copy );
        p_box->data.p_hdlr->psz_name[i_copy] = '\0';
    }

#ifdef MP4_VERBOSE
        msg_Dbg( p_stream, "read box: \"hdlr\" handler type: \"%4.4s\" name: \"%s\"",
                   (char*)&p_box->data.p_hdlr->i_handler_type,
                   p_box->data.p_hdlr->psz_name );

#endif
    FUNC5( 1 );
}