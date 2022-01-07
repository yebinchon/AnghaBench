
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlURIPtr ;
struct TYPE_6__ {int cleanup; } ;


 TYPE_1__* xmlCreateURI () ;
 int xmlFreeURI (TYPE_1__*) ;
 int xmlParseURIReference (TYPE_1__*,char const*) ;

xmlURIPtr
xmlParseURIRaw(const char *str, int raw) {
    xmlURIPtr uri;
    int ret;

    if (str == ((void*)0))
 return(((void*)0));
    uri = xmlCreateURI();
    if (uri != ((void*)0)) {
        if (raw) {
     uri->cleanup |= 2;
 }
 ret = xmlParseURIReference(uri, str);
        if (ret) {
     xmlFreeURI(uri);
     return(((void*)0));
 }
    }
    return(uri);
}
