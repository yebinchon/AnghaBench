
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {struct vlc_logger* logger; } ;
struct TYPE_20__ {TYPE_1__ obj; } ;
typedef TYPE_2__ xml_reader_t ;
struct TYPE_21__ {int pf_control; int pf_readdir; TYPE_2__* p_sys; struct TYPE_21__* s; } ;
typedef TYPE_3__ vlc_object_t ;
typedef int uint8_t ;
struct vlc_logger {int dummy; } ;
typedef TYPE_3__ stream_t ;
typedef scalar_t__ ssize_t ;


 int CHECK_FILE (TYPE_3__*) ;
 int Close_WPL (TYPE_3__*) ;
 int Demux ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int XML_READER_STARTELEM ;
 int access_vaDirectoryControlHelper ;
 int msg_Dbg (TYPE_3__*,char*) ;
 int msg_Err (TYPE_3__*,char*) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int stream_HasExtension (TYPE_3__*,char*) ;
 scalar_t__ unlikely (int) ;
 int vlc_stream_Delete (TYPE_3__*) ;
 TYPE_3__* vlc_stream_MemoryNew (TYPE_3__*,int *,scalar_t__,int) ;
 scalar_t__ vlc_stream_Peek (TYPE_3__*,int const**,int) ;
 void* xml_ReaderCreate (TYPE_3__*,TYPE_3__*) ;
 int xml_ReaderDelete (TYPE_2__*) ;
 int xml_ReaderNextNode (TYPE_2__*,char const**) ;

int Import_WPL( vlc_object_t* p_this )
{
    stream_t* p_demux = (stream_t*)p_this;

    CHECK_FILE(p_demux);
    if( !stream_HasExtension( p_demux, ".wpl" ) &&
        !stream_HasExtension( p_demux, ".zpl" ) )
        return VLC_EGENERIC;

    const uint8_t *p_peek;
    ssize_t i_peek = vlc_stream_Peek( p_demux->s, &p_peek, 2048 );
    if( unlikely( i_peek <= 0 ) )
        return VLC_EGENERIC;

    stream_t *p_probestream = vlc_stream_MemoryNew( p_demux, (uint8_t *)p_peek, i_peek, 1 );
    if( unlikely( !p_probestream ) )
        return VLC_EGENERIC;

    xml_reader_t *p_reader = xml_ReaderCreate( p_this, p_probestream );
    if ( p_reader == ((void*)0) )
    {
        msg_Err( p_demux, "Failed to create an XML reader" );
        vlc_stream_Delete( p_probestream );
        return VLC_EGENERIC;
    }
    p_demux->p_sys = p_reader;

    struct vlc_logger *const logger = p_reader->obj.logger;
    p_reader->obj.logger = ((void*)0);
    const char* psz_name;
    int type = xml_ReaderNextNode( p_reader, &psz_name );
    p_reader->obj.logger = logger;
    if ( type != XML_READER_STARTELEM || strcasecmp( psz_name, "smil" ) )
    {
        msg_Err( p_demux, "Invalid WPL playlist. Root element should have been <smil>" );
        Close_WPL( p_this );
        vlc_stream_Delete( p_probestream );
        return VLC_EGENERIC;
    }

    xml_ReaderDelete( p_demux->p_sys );

    p_demux->p_sys = xml_ReaderCreate( p_demux, p_demux->s );
    vlc_stream_Delete( p_probestream );
    if( unlikely( p_demux->p_sys == ((void*)0) ) )
        return VLC_EGENERIC;

    msg_Dbg( p_demux, "Found valid WPL playlist" );
    p_demux->pf_readdir = Demux;
    p_demux->pf_control = access_vaDirectoryControlHelper;

    return VLC_SUCCESS;
}
