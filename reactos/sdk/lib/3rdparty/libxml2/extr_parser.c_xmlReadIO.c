
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserInputPtr ;
typedef int * xmlParserInputBufferPtr ;
typedef int * xmlParserCtxtPtr ;
typedef int * xmlInputReadCallback ;
typedef int (* xmlInputCloseCallback ) (void*) ;
typedef int * xmlDocPtr ;


 int XML_CHAR_ENCODING_NONE ;
 int inputPush (int *,int *) ;
 int * xmlDoRead (int *,char const*,char const*,int,int ) ;
 int xmlFreeParserCtxt (int *) ;
 int xmlFreeParserInputBuffer (int *) ;
 int xmlInitParser () ;
 int * xmlNewIOInputStream (int *,int *,int ) ;
 int * xmlNewParserCtxt () ;
 int * xmlParserInputBufferCreateIO (int *,int (*) (void*),void*,int ) ;

xmlDocPtr
xmlReadIO(xmlInputReadCallback ioread, xmlInputCloseCallback ioclose,
          void *ioctx, const char *URL, const char *encoding, int options)
{
    xmlParserCtxtPtr ctxt;
    xmlParserInputBufferPtr input;
    xmlParserInputPtr stream;

    if (ioread == ((void*)0))
        return (((void*)0));
    xmlInitParser();

    input = xmlParserInputBufferCreateIO(ioread, ioclose, ioctx,
                                         XML_CHAR_ENCODING_NONE);
    if (input == ((void*)0)) {
        if (ioclose != ((void*)0))
            ioclose(ioctx);
        return (((void*)0));
    }
    ctxt = xmlNewParserCtxt();
    if (ctxt == ((void*)0)) {
        xmlFreeParserInputBuffer(input);
        return (((void*)0));
    }
    stream = xmlNewIOInputStream(ctxt, input, XML_CHAR_ENCODING_NONE);
    if (stream == ((void*)0)) {
        xmlFreeParserInputBuffer(input);
 xmlFreeParserCtxt(ctxt);
        return (((void*)0));
    }
    inputPush(ctxt, stream);
    return (xmlDoRead(ctxt, URL, encoding, options, 0));
}
