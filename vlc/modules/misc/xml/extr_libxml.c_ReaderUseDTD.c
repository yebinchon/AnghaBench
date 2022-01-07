
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ xml_reader_t ;
struct TYPE_5__ {int xml; } ;
typedef TYPE_2__ xml_reader_sys_t ;


 int VLC_SUCCESS ;
 int XML_PARSER_DEFAULTATTRS ;
 int XML_PARSER_VALIDATE ;
 int xmlTextReaderSetParserProp (int ,int ,int) ;

__attribute__((used)) static int ReaderUseDTD ( xml_reader_t *p_reader )
{

    xml_reader_sys_t *p_sys = p_reader->p_sys;
    xmlTextReaderSetParserProp( p_sys->xml,
                                XML_PARSER_DEFAULTATTRS, 1 );
    xmlTextReaderSetParserProp( p_sys->xml,
                                XML_PARSER_VALIDATE, 1 );

    return VLC_SUCCESS;
}
