
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int xml_reader_t ;
typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_9__ {int pf_control; int pf_readdir; int s; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ ssize_t ;


 int CHECK_FILE (TYPE_1__*) ;
 int ReadDir ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int XML_READER_STARTELEM ;
 int access_vaDirectoryControlHelper ;
 int msg_Dbg (TYPE_1__*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ stream_IsMimeType (int ,char*) ;
 scalar_t__ unlikely (int) ;
 int vlc_stream_Delete (TYPE_1__*) ;
 TYPE_1__* vlc_stream_MemoryNew (TYPE_1__*,int *,scalar_t__,int) ;
 scalar_t__ vlc_stream_Peek (int ,int const**,int) ;
 int * xml_ReaderCreate (TYPE_1__*,TYPE_1__*) ;
 int xml_ReaderDelete (int *) ;
 int xml_ReaderNextNode (int *,char const**) ;

int Import_podcast( vlc_object_t *p_this )
{
    stream_t *p_demux = (stream_t *)p_this;

    CHECK_FILE(p_demux);
    if( stream_IsMimeType( p_demux->s, "text/xml" )
     || stream_IsMimeType( p_demux->s, "application/xml" ) )
    {



        const uint8_t *p_peek;
        ssize_t i_peek = vlc_stream_Peek( p_demux->s, &p_peek, 2048 );
        if( unlikely( i_peek <= 0 ) )
            return VLC_EGENERIC;

        stream_t *p_probestream =
            vlc_stream_MemoryNew( p_demux, (uint8_t *)p_peek, i_peek, 1 );
        if( unlikely( !p_probestream ) )
            return VLC_EGENERIC;

        xml_reader_t *p_xml_reader = xml_ReaderCreate( p_demux, p_probestream );
        if( !p_xml_reader )
        {
            vlc_stream_Delete( p_probestream );
            return VLC_EGENERIC;
        }

        const char *node;
        int ret;
        if( ( ret = xml_ReaderNextNode( p_xml_reader, &node ) ) != XML_READER_STARTELEM
         || strcmp( node, "rss" ) )
        {
            vlc_stream_Delete( p_probestream );
            xml_ReaderDelete( p_xml_reader );
            return VLC_EGENERIC;
        }

        xml_ReaderDelete( p_xml_reader );
        vlc_stream_Delete( p_probestream );

    }
    else if( !stream_IsMimeType( p_demux->s, "application/rss+xml" ) )
        return VLC_EGENERIC;

    p_demux->pf_readdir = ReadDir;
    p_demux->pf_control = access_vaDirectoryControlHelper;
    msg_Dbg( p_demux, "using podcast reader" );

    return VLC_SUCCESS;
}
