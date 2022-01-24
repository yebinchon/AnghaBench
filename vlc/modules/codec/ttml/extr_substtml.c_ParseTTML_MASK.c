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
typedef  int /*<<< orphan*/  xml_reader_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  tt_node_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static tt_node_t *FUNC7( decoder_t *p_dec, const uint8_t *p_buffer, size_t i_buffer )
{
    stream_t*       p_sub;
    xml_reader_t*   p_xml_reader;

    p_sub = FUNC4( p_dec, (uint8_t*) p_buffer, i_buffer, true );
    if( FUNC2( p_sub == NULL ) )
        return NULL;

    p_xml_reader = FUNC5( p_dec, p_sub );
    if( FUNC2( p_xml_reader == NULL ) )
    {
        FUNC3( p_sub );
        return NULL;
    }

    tt_node_t *p_rootnode = NULL;
    if( FUNC0( p_xml_reader, &p_rootnode ) != VLC_SUCCESS )
    {
        if( p_rootnode )
            FUNC1( p_rootnode );
        p_rootnode = NULL;
    }

    FUNC6( p_xml_reader );
    FUNC3( p_sub );

    return p_rootnode;
}