
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* name; int * uconv_in; int * uconv_out; int * iconv_in; int * iconv_out; } ;
typedef TYPE_1__ xmlCharEncodingHandler ;


 int closeIcuConverter (int *) ;
 TYPE_1__** handlers ;
 scalar_t__ iconv_close (int *) ;
 int nbCharEncodingHandler ;
 int xmlFree (TYPE_1__*) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

int
xmlCharEncCloseFunc(xmlCharEncodingHandler *handler) {
    int ret = 0;
    int tofree = 0;
    int i, handler_in_list = 0;

    if (handler == ((void*)0)) return(-1);
    if (handler->name == ((void*)0)) return(-1);
    if (handlers != ((void*)0)) {
        for (i = 0;i < nbCharEncodingHandler; i++) {
            if (handler == handlers[i]) {
         handler_in_list = 1;
  break;
     }
 }
    }
    if (tofree) {

        if (handler->name != ((void*)0))
            xmlFree(handler->name);
        handler->name = ((void*)0);
        xmlFree(handler);
    }
    return(ret);
}
