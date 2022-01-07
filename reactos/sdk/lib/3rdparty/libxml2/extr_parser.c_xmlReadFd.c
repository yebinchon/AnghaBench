
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * xmlParserInputPtr ;
typedef TYPE_1__* xmlParserInputBufferPtr ;
typedef int * xmlParserCtxtPtr ;
typedef int * xmlDocPtr ;
struct TYPE_5__ {int * closecallback; } ;


 int XML_CHAR_ENCODING_NONE ;
 int inputPush (int *,int *) ;
 int * xmlDoRead (int *,char const*,char const*,int,int ) ;
 int xmlFreeParserCtxt (int *) ;
 int xmlFreeParserInputBuffer (TYPE_1__*) ;
 int xmlInitParser () ;
 int * xmlNewIOInputStream (int *,TYPE_1__*,int ) ;
 int * xmlNewParserCtxt () ;
 TYPE_1__* xmlParserInputBufferCreateFd (int,int ) ;

xmlDocPtr
xmlReadFd(int fd, const char *URL, const char *encoding, int options)
{
    xmlParserCtxtPtr ctxt;
    xmlParserInputBufferPtr input;
    xmlParserInputPtr stream;

    if (fd < 0)
        return (((void*)0));
    xmlInitParser();

    input = xmlParserInputBufferCreateFd(fd, XML_CHAR_ENCODING_NONE);
    if (input == ((void*)0))
        return (((void*)0));
    input->closecallback = ((void*)0);
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
