
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


 int xmlTextReaderIsEmptyElement (int ) ;

__attribute__((used)) static int ReaderIsEmptyElement( xml_reader_t *p_reader )
{
    xml_reader_sys_t *p_sys = p_reader->p_sys;
    return xmlTextReaderIsEmptyElement( p_sys->xml );
}
