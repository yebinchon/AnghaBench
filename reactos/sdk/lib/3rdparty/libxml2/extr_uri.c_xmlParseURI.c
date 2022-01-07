
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlURIPtr ;


 int * xmlCreateURI () ;
 int xmlFreeURI (int *) ;
 int xmlParse3986URIReference (int *,char const*) ;

xmlURIPtr
xmlParseURI(const char *str) {
    xmlURIPtr uri;
    int ret;

    if (str == ((void*)0))
 return(((void*)0));
    uri = xmlCreateURI();
    if (uri != ((void*)0)) {
 ret = xmlParse3986URIReference(uri, str);
        if (ret) {
     xmlFreeURI(uri);
     return(((void*)0));
 }
    }
    return(uri);
}
