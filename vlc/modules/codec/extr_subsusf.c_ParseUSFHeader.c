
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xml_reader_t ;
typedef int stream_t ;
struct TYPE_7__ {int i_extra; int p_extra; } ;
struct TYPE_8__ {TYPE_1__ fmt_in; } ;
typedef TYPE_2__ decoder_t ;


 int ParseUSFHeaderTags (TYPE_2__*,int *) ;
 int VLC_OBJECT (TYPE_2__*) ;
 scalar_t__ XML_READER_STARTELEM ;
 scalar_t__ likely (int *) ;
 int strcasecmp (char*,char const*) ;
 int vlc_stream_Delete (int *) ;
 int * vlc_stream_MemoryNew (int ,int ,int ,int) ;
 int * xml_ReaderCreate (TYPE_2__*,int *) ;
 int xml_ReaderDelete (int *) ;
 scalar_t__ xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static void ParseUSFHeader( decoder_t *p_dec )
{
    stream_t *p_sub = ((void*)0);
    xml_reader_t *p_xml_reader = ((void*)0);

    p_sub = vlc_stream_MemoryNew( VLC_OBJECT(p_dec),
                              p_dec->fmt_in.p_extra,
                              p_dec->fmt_in.i_extra,
                              1 );
    if( !p_sub )
        return;

    p_xml_reader = xml_ReaderCreate( p_dec, p_sub );
    if( likely(p_xml_reader) )
    {
        const char *node;


        if( xml_ReaderNextNode( p_xml_reader, &node ) == XML_READER_STARTELEM
         && !strcasecmp( "usfsubtitles", node ) )
            ParseUSFHeaderTags( p_dec, p_xml_reader );

        xml_ReaderDelete( p_xml_reader );
    }
    vlc_stream_Delete( p_sub );
}
