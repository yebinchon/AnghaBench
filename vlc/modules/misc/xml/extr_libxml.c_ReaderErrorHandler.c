
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_reader_t ;
typedef int xmlTextReaderLocatorPtr ;
typedef int xmlParserSeverities ;


 int VLC_UNUSED (int ) ;
 int msg_Err (int *,char*,int,char const*) ;
 int xmlTextReaderLocatorLineNumber (int ) ;

__attribute__((used)) static void ReaderErrorHandler( void *p_arg, const char *p_msg,
                                xmlParserSeverities severity,
                                xmlTextReaderLocatorPtr locator)
{
    VLC_UNUSED(severity);
    xml_reader_t *p_reader = (xml_reader_t *)p_arg;
    int line = xmlTextReaderLocatorLineNumber( locator );
    msg_Err( p_reader, "XML parser error (line %d) : %s", line, p_msg );
}
