
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int * xmlParserInputPtr ;
typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_7__ {int options; } ;


 int XML_PARSE_NONET ;
 int __xmlLoaderErr (TYPE_1__*,char*,char const*) ;
 int xmlFree (int *) ;
 int xmlGenericError (int ,char*,char const*) ;
 int xmlGenericErrorContext ;
 int * xmlNewInputFromFile (TYPE_1__*,char const*) ;
 int * xmlNoNetExternalEntityLoader (char const*,char const*,TYPE_1__*) ;
 int * xmlResolveResourceFromCatalog (char const*,char const*,TYPE_1__*) ;

__attribute__((used)) static xmlParserInputPtr
xmlDefaultExternalEntityLoader(const char *URL, const char *ID,
                               xmlParserCtxtPtr ctxt)
{
    xmlParserInputPtr ret = ((void*)0);
    xmlChar *resource = ((void*)0);





    if ((ctxt != ((void*)0)) && (ctxt->options & XML_PARSE_NONET)) {
        int options = ctxt->options;

 ctxt->options -= XML_PARSE_NONET;
        ret = xmlNoNetExternalEntityLoader(URL, ID, ctxt);
 ctxt->options = options;
 return(ret);
    }




    if (resource == ((void*)0))
        resource = (xmlChar *) URL;

    if (resource == ((void*)0)) {
        if (ID == ((void*)0))
            ID = "NULL";
        __xmlLoaderErr(ctxt, "failed to load external entity \"%s\"\n", ID);
        return (((void*)0));
    }
    ret = xmlNewInputFromFile(ctxt, (const char *) resource);
    if ((resource != ((void*)0)) && (resource != (xmlChar *) URL))
        xmlFree(resource);
    return (ret);
}
