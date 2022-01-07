
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserCtxtPtr ;
typedef int xmlParserCtxt ;


 int memset (int *,int ,int) ;
 int xmlErrMemory (int *,char*) ;
 int xmlFreeParserCtxt (int *) ;
 scalar_t__ xmlInitParserCtxt (int *) ;
 scalar_t__ xmlMalloc (int) ;

xmlParserCtxtPtr
xmlNewParserCtxt(void)
{
    xmlParserCtxtPtr ctxt;

    ctxt = (xmlParserCtxtPtr) xmlMalloc(sizeof(xmlParserCtxt));
    if (ctxt == ((void*)0)) {
 xmlErrMemory(((void*)0), "cannot allocate parser context\n");
 return(((void*)0));
    }
    memset(ctxt, 0, sizeof(xmlParserCtxt));
    if (xmlInitParserCtxt(ctxt) < 0) {
        xmlFreeParserCtxt(ctxt);
 return(((void*)0));
    }
    return(ctxt);
}
