
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserInputPtr ;
typedef int * xmlParserInputBufferPtr ;
typedef int * xmlParserCtxtPtr ;
typedef int * xmlDocPtr ;


 int XML_CHAR_ENCODING_NONE ;
 int inputPush (int *,int *) ;
 int xmlCtxtReset (int *) ;
 int * xmlDoRead (int *,char const*,char const*,int,int) ;
 int xmlFreeParserInputBuffer (int *) ;
 int xmlInitParser () ;
 int * xmlNewIOInputStream (int *,int *,int ) ;
 int * xmlParserInputBufferCreateMem (char const*,int,int ) ;

xmlDocPtr
xmlCtxtReadMemory(xmlParserCtxtPtr ctxt, const char *buffer, int size,
                  const char *URL, const char *encoding, int options)
{
    xmlParserInputBufferPtr input;
    xmlParserInputPtr stream;

    if (ctxt == ((void*)0))
        return (((void*)0));
    if (buffer == ((void*)0))
        return (((void*)0));
    xmlInitParser();

    xmlCtxtReset(ctxt);

    input = xmlParserInputBufferCreateMem(buffer, size, XML_CHAR_ENCODING_NONE);
    if (input == ((void*)0)) {
 return(((void*)0));
    }

    stream = xmlNewIOInputStream(ctxt, input, XML_CHAR_ENCODING_NONE);
    if (stream == ((void*)0)) {
 xmlFreeParserInputBuffer(input);
 return(((void*)0));
    }

    inputPush(ctxt, stream);
    return (xmlDoRead(ctxt, URL, encoding, options, 1));
}
