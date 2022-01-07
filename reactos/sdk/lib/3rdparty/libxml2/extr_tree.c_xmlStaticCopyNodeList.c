
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef int * xmlDtdPtr ;
typedef TYPE_2__* xmlDocPtr ;
struct TYPE_14__ {int * intSubset; } ;
struct TYPE_13__ {scalar_t__ type; struct TYPE_13__* next; struct TYPE_13__* prev; struct TYPE_13__* parent; TYPE_2__* doc; } ;


 scalar_t__ XML_DTD_NODE ;
 int xmlAddChild (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ xmlCopyDtd (int *) ;
 TYPE_1__* xmlStaticCopyNode (TYPE_1__*,TYPE_2__*,TYPE_1__*,int) ;

__attribute__((used)) static xmlNodePtr
xmlStaticCopyNodeList(xmlNodePtr node, xmlDocPtr doc, xmlNodePtr parent) {
    xmlNodePtr ret = ((void*)0);
    xmlNodePtr p = ((void*)0),q;

    while (node != ((void*)0)) {
     q = xmlStaticCopyNode(node, doc, parent, 1);
 if (q == ((void*)0)) return(((void*)0));
 if (ret == ((void*)0)) {
     q->prev = ((void*)0);
     ret = p = q;
 } else if (p != q) {

     p->next = q;
     q->prev = p;
     p = q;
 }
 node = node->next;
    }
    return(ret);
}
