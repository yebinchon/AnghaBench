
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_reader_t ;
typedef int uint8_t ;
typedef int tt_node_t ;
typedef int stream_t ;
typedef int decoder_t ;


 scalar_t__ ParseTTMLChunk (int *,int **) ;
 scalar_t__ VLC_SUCCESS ;
 int tt_node_RecursiveDelete (int *) ;
 scalar_t__ unlikely (int ) ;
 int vlc_stream_Delete (int *) ;
 int * vlc_stream_MemoryNew (int *,int *,size_t,int) ;
 int * xml_ReaderCreate (int *,int *) ;
 int xml_ReaderDelete (int *) ;

__attribute__((used)) static tt_node_t *ParseTTML( decoder_t *p_dec, const uint8_t *p_buffer, size_t i_buffer )
{
    stream_t* p_sub;
    xml_reader_t* p_xml_reader;

    p_sub = vlc_stream_MemoryNew( p_dec, (uint8_t*) p_buffer, i_buffer, 1 );
    if( unlikely( p_sub == ((void*)0) ) )
        return ((void*)0);

    p_xml_reader = xml_ReaderCreate( p_dec, p_sub );
    if( unlikely( p_xml_reader == ((void*)0) ) )
    {
        vlc_stream_Delete( p_sub );
        return ((void*)0);
    }

    tt_node_t *p_rootnode = ((void*)0);
    if( ParseTTMLChunk( p_xml_reader, &p_rootnode ) != VLC_SUCCESS )
    {
        if( p_rootnode )
            tt_node_RecursiveDelete( p_rootnode );
        p_rootnode = ((void*)0);
    }

    xml_ReaderDelete( p_xml_reader );
    vlc_stream_Delete( p_sub );

    return p_rootnode;
}
