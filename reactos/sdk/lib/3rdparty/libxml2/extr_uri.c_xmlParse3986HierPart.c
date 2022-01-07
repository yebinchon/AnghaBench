
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlURIPtr ;
struct TYPE_7__ {int port; int * path; int * server; } ;


 scalar_t__ ISA_PCHAR (char const*) ;
 int xmlFree (int *) ;
 int xmlParse3986Authority (TYPE_1__*,char const**) ;
 int xmlParse3986PathAbEmpty (TYPE_1__*,char const**) ;
 int xmlParse3986PathAbsolute (TYPE_1__*,char const**) ;
 int xmlParse3986PathRootless (TYPE_1__*,char const**) ;

__attribute__((used)) static int
xmlParse3986HierPart(xmlURIPtr uri, const char **str)
{
    const char *cur;
    int ret;

    cur = *str;

    if ((*cur == '/') && (*(cur + 1) == '/')) {
        cur += 2;
 ret = xmlParse3986Authority(uri, &cur);
 if (ret != 0) return(ret);
 if (uri->server == ((void*)0))
     uri->port = -1;
 ret = xmlParse3986PathAbEmpty(uri, &cur);
 if (ret != 0) return(ret);
 *str = cur;
 return(0);
    } else if (*cur == '/') {
        ret = xmlParse3986PathAbsolute(uri, &cur);
 if (ret != 0) return(ret);
    } else if (ISA_PCHAR(cur)) {
        ret = xmlParse3986PathRootless(uri, &cur);
 if (ret != 0) return(ret);
    } else {

 if (uri != ((void*)0)) {
     if (uri->path != ((void*)0)) xmlFree(uri->path);
     uri->path = ((void*)0);
 }
    }
    *str = cur;
    return (0);
}
