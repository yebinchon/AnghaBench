#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_readdir; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stream_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ReadDir ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int XML_READER_STARTELEM ; 
 int /*<<< orphan*/  access_vaDirectoryControlHelper ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,char const**) ; 

int FUNC11( vlc_object_t *p_this )
{
    stream_t *p_demux = (stream_t *)p_this;

    FUNC0(p_demux);
    if( FUNC3( p_demux->s, "text/xml" )
     || FUNC3( p_demux->s, "application/xml" ) )
    {
        /* XML: check if the root node is "rss". Use a specific peeked
         * probestream in order to not modify the source state while probing.
         * */
        const uint8_t *p_peek;
        ssize_t i_peek = FUNC7( p_demux->s, &p_peek, 2048 );
        if( FUNC4( i_peek <= 0 ) )
            return VLC_EGENERIC;

        stream_t *p_probestream =
            FUNC6( p_demux, (uint8_t *)p_peek, i_peek, true );
        if( FUNC4( !p_probestream ) )
            return VLC_EGENERIC;

        xml_reader_t *p_xml_reader = FUNC8( p_demux, p_probestream );
        if( !p_xml_reader )
        {
            FUNC5( p_probestream );
            return VLC_EGENERIC;
        }

        const char *node;
        int ret;
        if( ( ret = FUNC10( p_xml_reader, &node ) ) != XML_READER_STARTELEM
         || FUNC2( node, "rss" ) )
        {
            FUNC5( p_probestream );
            FUNC9( p_xml_reader );
            return VLC_EGENERIC;
        }

        FUNC9( p_xml_reader );
        FUNC5( p_probestream );
        /* SUCCESS: this text/xml is a rss file */
    }
    else if( !FUNC3( p_demux->s, "application/rss+xml" ) )
        return VLC_EGENERIC;

    p_demux->pf_readdir = ReadDir;
    p_demux->pf_control = access_vaDirectoryControlHelper;
    FUNC1( p_demux, "using podcast reader" );

    return VLC_SUCCESS;
}