
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_3__ {int * p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int input_item_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ XML_READER_TEXT ;
 int consume_tag (int *,char*) ;
 int input_item_SetTitle (int *,char const*) ;
 scalar_t__ xml_ReaderIsEmptyElement (int *) ;
 scalar_t__ xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static int parse_title_element( stream_t* p_demux, input_item_t* p_input )
{
    xml_reader_t *p_reader = p_demux->p_sys;
    char const* psz_title;

    if( xml_ReaderIsEmptyElement( p_reader ) )
        return VLC_SUCCESS;

    if( xml_ReaderNextNode( p_reader, &psz_title ) != XML_READER_TEXT )
        return VLC_EGENERIC;

    input_item_SetTitle( p_input, psz_title );

    consume_tag( p_reader, "title" );
    return VLC_SUCCESS;
}
