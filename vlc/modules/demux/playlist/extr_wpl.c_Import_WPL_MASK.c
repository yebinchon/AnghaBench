#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {struct vlc_logger* logger; } ;
struct TYPE_20__ {TYPE_1__ obj; } ;
typedef  TYPE_2__ xml_reader_t ;
struct TYPE_21__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_readdir; TYPE_2__* p_sys; struct TYPE_21__* s; } ;
typedef  TYPE_3__ vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct vlc_logger {int dummy; } ;
typedef  TYPE_3__ stream_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  Demux ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int XML_READER_STARTELEM ; 
 int /*<<< orphan*/  access_vaDirectoryControlHelper ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/  const**,int) ; 
 void* FUNC10 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*,char const**) ; 

int FUNC13( vlc_object_t* p_this )
{
    stream_t* p_demux = (stream_t*)p_this;

    FUNC0(p_demux);
    if( !FUNC5( p_demux, ".wpl" ) &&
        !FUNC5( p_demux, ".zpl" ) )
        return VLC_EGENERIC;

    const uint8_t *p_peek;
    ssize_t i_peek = FUNC9( p_demux->s, &p_peek, 2048 );
    if( FUNC6( i_peek <= 0 ) )
        return VLC_EGENERIC;

    stream_t *p_probestream = FUNC8( p_demux, (uint8_t *)p_peek, i_peek, true );
    if( FUNC6( !p_probestream ) )
        return VLC_EGENERIC;

    xml_reader_t *p_reader = FUNC10( p_this, p_probestream );
    if ( p_reader == NULL )
    {
        FUNC3( p_demux, "Failed to create an XML reader" );
        FUNC7( p_probestream );
        return VLC_EGENERIC;
    }
    p_demux->p_sys = p_reader;

    struct vlc_logger *const logger = p_reader->obj.logger;
    p_reader->obj.logger = NULL;
    const char* psz_name;
    int type = FUNC12( p_reader, &psz_name );
    p_reader->obj.logger = logger;
    if ( type != XML_READER_STARTELEM || FUNC4( psz_name, "smil" ) )
    {
        FUNC3( p_demux, "Invalid WPL playlist. Root element should have been <smil>" );
        FUNC1( p_this );
        FUNC7( p_probestream );
        return VLC_EGENERIC;
    }

    FUNC11( p_demux->p_sys );

    p_demux->p_sys = FUNC10( p_demux, p_demux->s );
    FUNC7( p_probestream );
    if( FUNC6( p_demux->p_sys == NULL ) )
        return VLC_EGENERIC;

    FUNC2( p_demux, "Found valid WPL playlist" );
    p_demux->pf_readdir = Demux;
    p_demux->pf_control = access_vaDirectoryControlHelper;

    return VLC_SUCCESS;
}