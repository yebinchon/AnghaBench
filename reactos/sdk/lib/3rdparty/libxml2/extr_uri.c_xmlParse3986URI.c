
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlURIPtr ;


 int xmlCleanURI (int ) ;
 int xmlParse3986Fragment (int ,char const**) ;
 int xmlParse3986HierPart (int ,char const**) ;
 int xmlParse3986Query (int ,char const**) ;
 int xmlParse3986Scheme (int ,char const**) ;

__attribute__((used)) static int
xmlParse3986URI(xmlURIPtr uri, const char *str) {
    int ret;

    ret = xmlParse3986Scheme(uri, &str);
    if (ret != 0) return(ret);
    if (*str != ':') {
 return(1);
    }
    str++;
    ret = xmlParse3986HierPart(uri, &str);
    if (ret != 0) return(ret);
    if (*str == '?') {
 str++;
 ret = xmlParse3986Query(uri, &str);
 if (ret != 0) return(ret);
    }
    if (*str == '#') {
 str++;
 ret = xmlParse3986Fragment(uri, &str);
 if (ret != 0) return(ret);
    }
    if (*str != 0) {
 xmlCleanURI(uri);
 return(1);
    }
    return(0);
}
