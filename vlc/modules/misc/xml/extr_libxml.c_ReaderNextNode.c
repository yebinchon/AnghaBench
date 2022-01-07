
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ xml_reader_t ;
struct TYPE_5__ {char* node; int xml; } ;
typedef TYPE_2__ xml_reader_sys_t ;
typedef int xmlChar ;


 int XML_READER_ENDELEM ;
 int XML_READER_ERROR ;
 int XML_READER_NONE ;
 int XML_READER_STARTELEM ;
 int XML_READER_TEXT ;




 int free (char*) ;
 scalar_t__ likely (int ) ;
 char* strdup (char const*) ;
 scalar_t__ unlikely (int ) ;
 int * xmlTextReaderConstName (int ) ;
 int * xmlTextReaderConstValue (int ) ;
 int xmlTextReaderNodeType (int ) ;
 int xmlTextReaderRead (int ) ;

__attribute__((used)) static int ReaderNextNode( xml_reader_t *p_reader, const char **pval )
{
    xml_reader_sys_t *p_sys = p_reader->p_sys;
    const xmlChar *node;
    int ret;

    free( p_sys->node );
    p_sys->node = ((void*)0);

skip:
    switch( xmlTextReaderRead( p_sys->xml ) )
    {
        case 0:
            return XML_READER_NONE;
        case -1:
            return XML_READER_ERROR;
    }

    switch( xmlTextReaderNodeType( p_sys->xml ) )
    {
        case 130:
            node = xmlTextReaderConstName( p_sys->xml );
            ret = XML_READER_STARTELEM;
            break;

        case 129:
            node = xmlTextReaderConstName( p_sys->xml );
            ret = XML_READER_ENDELEM;
            break;

        case 131:
        case 128:
            node = xmlTextReaderConstValue( p_sys->xml );
            ret = XML_READER_TEXT;
            break;

        case -1:
            return XML_READER_ERROR;

        default:
            goto skip;
    }

    if( unlikely(node == ((void*)0)) )
        return XML_READER_ERROR;

    p_sys->node = strdup( (const char *)node );
    if( pval != ((void*)0) )
        *pval = p_sys->node;
    return likely(p_sys->node != ((void*)0)) ? ret : XML_READER_ERROR;
}
