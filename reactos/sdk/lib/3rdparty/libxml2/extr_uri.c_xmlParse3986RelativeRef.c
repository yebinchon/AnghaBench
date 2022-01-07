
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* xmlURIPtr ;
struct TYPE_10__ {int * path; } ;


 scalar_t__ ISA_PCHAR (char const*) ;
 int xmlCleanURI (TYPE_1__*) ;
 int xmlFree (int *) ;
 int xmlParse3986Authority (TYPE_1__*,char const**) ;
 int xmlParse3986Fragment (TYPE_1__*,char const**) ;
 int xmlParse3986PathAbEmpty (TYPE_1__*,char const**) ;
 int xmlParse3986PathAbsolute (TYPE_1__*,char const**) ;
 int xmlParse3986PathNoScheme (TYPE_1__*,char const**) ;
 int xmlParse3986Query (TYPE_1__*,char const**) ;

__attribute__((used)) static int
xmlParse3986RelativeRef(xmlURIPtr uri, const char *str) {
    int ret;

    if ((*str == '/') && (*(str + 1) == '/')) {
        str += 2;
 ret = xmlParse3986Authority(uri, &str);
 if (ret != 0) return(ret);
 ret = xmlParse3986PathAbEmpty(uri, &str);
 if (ret != 0) return(ret);
    } else if (*str == '/') {
 ret = xmlParse3986PathAbsolute(uri, &str);
 if (ret != 0) return(ret);
    } else if (ISA_PCHAR(str)) {
        ret = xmlParse3986PathNoScheme(uri, &str);
 if (ret != 0) return(ret);
    } else {

 if (uri != ((void*)0)) {
     if (uri->path != ((void*)0)) xmlFree(uri->path);
     uri->path = ((void*)0);
 }
    }

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
