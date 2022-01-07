
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlURIPtr ;


 int xmlParse3986URIReference (int ,char const*) ;

int
xmlParseURIReference(xmlURIPtr uri, const char *str) {
    return(xmlParse3986URIReference(uri, str));
}
