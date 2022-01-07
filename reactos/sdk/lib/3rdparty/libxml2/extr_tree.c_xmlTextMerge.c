
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ name; int content; } ;


 scalar_t__ XML_TEXT_NODE ;
 int xmlFreeNode (TYPE_1__*) ;
 int xmlNodeAddContent (TYPE_1__*,int ) ;
 int xmlUnlinkNode (TYPE_1__*) ;

xmlNodePtr
xmlTextMerge(xmlNodePtr first, xmlNodePtr second) {
    if (first == ((void*)0)) return(second);
    if (second == ((void*)0)) return(first);
    if (first->type != XML_TEXT_NODE) return(first);
    if (second->type != XML_TEXT_NODE) return(first);
    if (second->name != first->name)
 return(first);
    xmlNodeAddContent(first, second->content);
    xmlUnlinkNode(second);
    xmlFreeNode(second);
    return(first);
}
