
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef int xmlDocPtr ;
typedef int xmlChar ;
typedef int prefix ;
struct TYPE_13__ {scalar_t__ type; } ;
struct TYPE_12__ {scalar_t__ type; int href; int * prefix; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 int snprintf (char*,int,char*,...) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 TYPE_1__* xmlNewNs (TYPE_2__*,int ,int *) ;
 TYPE_1__* xmlSearchNs (int ,TYPE_2__*,int *) ;
 TYPE_1__* xmlSearchNsByHref (int ,TYPE_2__*,int ) ;

__attribute__((used)) static xmlNsPtr
xmlNewReconciliedNs(xmlDocPtr doc, xmlNodePtr tree, xmlNsPtr ns) {
    xmlNsPtr def;
    xmlChar prefix[50];
    int counter = 1;

    if ((tree == ((void*)0)) || (tree->type != XML_ELEMENT_NODE)) {




 return(((void*)0));
    }
    if ((ns == ((void*)0)) || (ns->type != XML_NAMESPACE_DECL)) {




 return(((void*)0));
    }



    def = xmlSearchNsByHref(doc, tree, ns->href);
    if (def != ((void*)0))
        return(def);





    if (ns->prefix == ((void*)0))
 snprintf((char *) prefix, sizeof(prefix), "default");
    else
 snprintf((char *) prefix, sizeof(prefix), "%.20s", (char *)ns->prefix);

    def = xmlSearchNs(doc, tree, prefix);
    while (def != ((void*)0)) {
        if (counter > 1000) return(((void*)0));
 if (ns->prefix == ((void*)0))
     snprintf((char *) prefix, sizeof(prefix), "default%d", counter++);
 else
     snprintf((char *) prefix, sizeof(prefix), "%.20s%d",
  (char *)ns->prefix, counter++);
 def = xmlSearchNs(doc, tree, prefix);
    }




    def = xmlNewNs(tree, ns->href, prefix);
    return(def);
}
