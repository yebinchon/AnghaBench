
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlURIPtr ;


 int xmlCleanURI (int ) ;
 int xmlParse3986RelativeRef (int ,char const*) ;
 int xmlParse3986URI (int ,char const*) ;

__attribute__((used)) static int
xmlParse3986URIReference(xmlURIPtr uri, const char *str) {
    int ret;

    if (str == ((void*)0))
 return(-1);
    xmlCleanURI(uri);





    ret = xmlParse3986URI(uri, str);
    if (ret != 0) {
 xmlCleanURI(uri);
        ret = xmlParse3986RelativeRef(uri, str);
 if (ret != 0) {
     xmlCleanURI(uri);
     return(ret);
 }
    }
    return(0);
}
