
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
typedef int xmlTextReaderPtr ;
typedef int xmlChar ;


 int * xmlTextReaderConstName (int ) ;
 int * xmlTextReaderConstValue (int ) ;
 int xmlTextReaderMoveToNextAttribute (int ) ;

__attribute__((used)) static const char *ReaderNextAttr( xml_reader_t *p_reader, const char **pval )
{
    xml_reader_sys_t *p_sys = p_reader->p_sys;
    xmlTextReaderPtr xml = p_sys->xml;
    const xmlChar *name, *value;

    if( xmlTextReaderMoveToNextAttribute( xml ) != 1
     || (name = xmlTextReaderConstName( xml )) == ((void*)0)
     || (value = xmlTextReaderConstValue( xml )) == ((void*)0) )
        return ((void*)0);

    *pval = (const char *)value;
    return (const char *)name;
}
