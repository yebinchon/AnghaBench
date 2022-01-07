
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
struct TYPE_5__ {int type; int prefix; int href; } ;



 int xmlGenericError (int ,char*,int) ;
 int xmlGenericErrorContext ;
 TYPE_1__* xmlNewNs (int *,int ,int ) ;

xmlNsPtr
xmlCopyNamespace(xmlNsPtr cur) {
    xmlNsPtr ret;

    if (cur == ((void*)0)) return(((void*)0));
    switch (cur->type) {
 case 128:
     ret = xmlNewNs(((void*)0), cur->href, cur->prefix);
     break;
 default:




     return(((void*)0));
    }
    return(ret);
}
