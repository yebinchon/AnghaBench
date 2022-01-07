
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* xmlDocPtr ;
typedef int xmlChar ;
typedef TYPE_4__* xmlAttrPtr ;
struct TYPE_34__ {TYPE_2__* children; TYPE_3__* doc; TYPE_2__* parent; TYPE_2__* last; TYPE_1__* ns; int name; } ;
struct TYPE_33__ {int * ids; } ;
struct TYPE_32__ {scalar_t__ type; TYPE_3__* doc; struct TYPE_32__* next; struct TYPE_32__* parent; } ;
struct TYPE_31__ {int href; int prefix; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int xmlAddID (int *,TYPE_3__*,int *,TYPE_4__*) ;
 int xmlFree (int *) ;
 scalar_t__ xmlIsID (TYPE_3__*,TYPE_2__*,TYPE_4__*) ;
 TYPE_4__* xmlNewDocProp (TYPE_3__*,int ,int *) ;
 TYPE_1__* xmlNewNs (TYPE_2__*,int ,int ) ;
 TYPE_1__* xmlNewReconciliedNs (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;
 int * xmlNodeListGetString (TYPE_3__*,TYPE_2__*,int) ;
 TYPE_1__* xmlSearchNs (TYPE_3__*,TYPE_2__*,int ) ;
 TYPE_2__* xmlStaticCopyNodeList (TYPE_2__*,TYPE_3__*,TYPE_2__*) ;
 scalar_t__ xmlStrEqual (int ,int ) ;

__attribute__((used)) static xmlAttrPtr
xmlCopyPropInternal(xmlDocPtr doc, xmlNodePtr target, xmlAttrPtr cur) {
    xmlAttrPtr ret;

    if (cur == ((void*)0)) return(((void*)0));
    if ((target != ((void*)0)) && (target->type != XML_ELEMENT_NODE))
        return(((void*)0));
    if (target != ((void*)0))
 ret = xmlNewDocProp(target->doc, cur->name, ((void*)0));
    else if (doc != ((void*)0))
 ret = xmlNewDocProp(doc, cur->name, ((void*)0));
    else if (cur->parent != ((void*)0))
 ret = xmlNewDocProp(cur->parent->doc, cur->name, ((void*)0));
    else if (cur->children != ((void*)0))
 ret = xmlNewDocProp(cur->children->doc, cur->name, ((void*)0));
    else
 ret = xmlNewDocProp(((void*)0), cur->name, ((void*)0));
    if (ret == ((void*)0)) return(((void*)0));
    ret->parent = target;

    if ((cur->ns != ((void*)0)) && (target != ((void*)0))) {
      xmlNsPtr ns;

      ns = xmlSearchNs(target->doc, target, cur->ns->prefix);
      if (ns == ((void*)0)) {





        ns = xmlSearchNs(cur->doc, cur->parent, cur->ns->prefix);
        if (ns != ((void*)0)) {
          xmlNodePtr root = target;
          xmlNodePtr pred = ((void*)0);

          while (root->parent != ((void*)0)) {
            pred = root;
            root = root->parent;
          }
          if (root == (xmlNodePtr) target->doc) {

            root = pred;
          }
          ret->ns = xmlNewNs(root, ns->href, ns->prefix);
        }
      } else {





        if (xmlStrEqual(ns->href, cur->ns->href)) {

          ret->ns = ns;
        } else {




          ret->ns = xmlNewReconciliedNs(target->doc, target, cur->ns);
        }
      }

    } else
        ret->ns = ((void*)0);

    if (cur->children != ((void*)0)) {
 xmlNodePtr tmp;

 ret->children = xmlStaticCopyNodeList(cur->children, ret->doc, (xmlNodePtr) ret);
 ret->last = ((void*)0);
 tmp = ret->children;
 while (tmp != ((void*)0)) {

     if (tmp->next == ((void*)0))
         ret->last = tmp;
     tmp = tmp->next;
 }
    }



    if ((target!= ((void*)0)) && (cur!= ((void*)0)) &&
 (target->doc != ((void*)0)) && (cur->doc != ((void*)0)) &&
 (cur->doc->ids != ((void*)0)) && (cur->parent != ((void*)0))) {
 if (xmlIsID(cur->doc, cur->parent, cur)) {
     xmlChar *id;

     id = xmlNodeListGetString(cur->doc, cur->children, 1);
     if (id != ((void*)0)) {
  xmlAddID(((void*)0), target->doc, id, ret);
  xmlFree(id);
     }
 }
    }
    return(ret);
}
