
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserInputPtr ;
typedef int xmlParserCtxtPtr ;
typedef int xmlChar ;


 scalar_t__ xmlCanonicPath (int const*) ;
 int * xmlCurrentExternalEntityLoader (char const*,char const*,int ) ;
 int xmlFree (char*) ;
 int xmlIOErrMemory (char*) ;
 scalar_t__ xmlNoNetExists (char const*) ;

xmlParserInputPtr
xmlLoadExternalEntity(const char *URL, const char *ID,
                      xmlParserCtxtPtr ctxt) {
    if ((URL != ((void*)0)) && (xmlNoNetExists(URL) == 0)) {
 char *canonicFilename;
 xmlParserInputPtr ret;

 canonicFilename = (char *) xmlCanonicPath((const xmlChar *) URL);
 if (canonicFilename == ((void*)0)) {
            xmlIOErrMemory("building canonical path\n");
     return(((void*)0));
 }

 ret = xmlCurrentExternalEntityLoader(canonicFilename, ID, ctxt);
 xmlFree(canonicFilename);
 return(ret);
    }
    return(xmlCurrentExternalEntityLoader(URL, ID, ctxt));
}
