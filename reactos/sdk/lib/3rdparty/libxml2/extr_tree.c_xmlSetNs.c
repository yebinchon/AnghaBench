
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlNsPtr ;
typedef TYPE_1__* xmlNodePtr ;
struct TYPE_3__ {scalar_t__ type; int ns; } ;


 scalar_t__ XML_ATTRIBUTE_NODE ;
 scalar_t__ XML_ELEMENT_NODE ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

void
xmlSetNs(xmlNodePtr node, xmlNsPtr ns) {
    if (node == ((void*)0)) {




 return;
    }
    if ((node->type == XML_ELEMENT_NODE) ||
        (node->type == XML_ATTRIBUTE_NODE))
 node->ns = ns;
}
