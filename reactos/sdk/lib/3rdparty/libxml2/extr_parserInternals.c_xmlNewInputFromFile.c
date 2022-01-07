
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputPtr ;
typedef TYPE_2__* xmlParserInputBufferPtr ;
typedef TYPE_3__* xmlParserCtxtPtr ;
typedef int const xmlChar ;
struct TYPE_16__ {char* directory; } ;
struct TYPE_15__ {int buffer; } ;
struct TYPE_14__ {char* filename; char* directory; TYPE_2__* buf; } ;


 int XML_CHAR_ENCODING_NONE ;
 int __xmlLoaderErr (TYPE_3__*,char*,char const*) ;
 int xmlBufResetInput (int ,TYPE_1__*) ;
 scalar_t__ xmlCanonicPath (int const*) ;
 TYPE_1__* xmlCheckHTTPInput (TYPE_3__*,TYPE_1__*) ;
 int xmlFree (char*) ;
 int xmlGenericError (int ,char*,char const*) ;
 int xmlGenericErrorContext ;
 TYPE_1__* xmlNewInputStream (TYPE_3__*) ;
 scalar_t__ xmlParserDebugEntities ;
 char* xmlParserGetDirectory (char const*) ;
 TYPE_2__* xmlParserInputBufferCreateFilename (char const*,int ) ;
 int const* xmlStrdup (int const*) ;

xmlParserInputPtr
xmlNewInputFromFile(xmlParserCtxtPtr ctxt, const char *filename) {
    xmlParserInputBufferPtr buf;
    xmlParserInputPtr inputStream;
    char *directory = ((void*)0);
    xmlChar *URI = ((void*)0);

    if (xmlParserDebugEntities)
 xmlGenericError(xmlGenericErrorContext,
  "new input from file: %s\n", filename);
    if (ctxt == ((void*)0)) return(((void*)0));
    buf = xmlParserInputBufferCreateFilename(filename, XML_CHAR_ENCODING_NONE);
    if (buf == ((void*)0)) {
 if (filename == ((void*)0))
     __xmlLoaderErr(ctxt,
                    "failed to load external entity: NULL filename \n",
      ((void*)0));
 else
     __xmlLoaderErr(ctxt, "failed to load external entity \"%s\"\n",
      (const char *) filename);
 return(((void*)0));
    }

    inputStream = xmlNewInputStream(ctxt);
    if (inputStream == ((void*)0))
 return(((void*)0));

    inputStream->buf = buf;
    inputStream = xmlCheckHTTPInput(ctxt, inputStream);
    if (inputStream == ((void*)0))
        return(((void*)0));

    if (inputStream->filename == ((void*)0))
 URI = xmlStrdup((xmlChar *) filename);
    else
 URI = xmlStrdup((xmlChar *) inputStream->filename);
    directory = xmlParserGetDirectory((const char *) URI);
    if (inputStream->filename != ((void*)0)) xmlFree((char *)inputStream->filename);
    inputStream->filename = (char *) xmlCanonicPath((const xmlChar *) URI);
    if (URI != ((void*)0)) xmlFree((char *) URI);
    inputStream->directory = directory;

    xmlBufResetInput(inputStream->buf->buffer, inputStream);
    if ((ctxt->directory == ((void*)0)) && (directory != ((void*)0)))
        ctxt->directory = (char *) xmlStrdup((const xmlChar *) directory);
    return(inputStream);
}
