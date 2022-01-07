
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int line; struct TYPE_3__* parent; struct TYPE_3__* prev; struct TYPE_3__* next; struct TYPE_3__* children; int * psvi; } ;
typedef TYPE_1__ xmlNode ;
typedef scalar_t__ ptrdiff_t ;


 scalar_t__ XML_COMMENT_NODE ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_PI_NODE ;
 scalar_t__ XML_TEXT_NODE ;

__attribute__((used)) static long
xmlGetLineNoInternal(const xmlNode *node, int depth)
{
    long result = -1;

    if (depth >= 5)
        return(-1);

    if (!node)
        return result;
    if ((node->type == XML_ELEMENT_NODE) ||
        (node->type == XML_TEXT_NODE) ||
 (node->type == XML_COMMENT_NODE) ||
 (node->type == XML_PI_NODE)) {
 if (node->line == 65535) {
     if ((node->type == XML_TEXT_NODE) && (node->psvi != ((void*)0)))
         result = (long) (ptrdiff_t) node->psvi;
     else if ((node->type == XML_ELEMENT_NODE) &&
              (node->children != ((void*)0)))
         result = xmlGetLineNoInternal(node->children, depth + 1);
     else if (node->next != ((void*)0))
         result = xmlGetLineNoInternal(node->next, depth + 1);
     else if (node->prev != ((void*)0))
         result = xmlGetLineNoInternal(node->prev, depth + 1);
 }
 if ((result == -1) || (result == 65535))
     result = (long) node->line;
    } else if ((node->prev != ((void*)0)) &&
             ((node->prev->type == XML_ELEMENT_NODE) ||
       (node->prev->type == XML_TEXT_NODE) ||
       (node->prev->type == XML_COMMENT_NODE) ||
       (node->prev->type == XML_PI_NODE)))
        result = xmlGetLineNoInternal(node->prev, depth + 1);
    else if ((node->parent != ((void*)0)) &&
             (node->parent->type == XML_ELEMENT_NODE))
        result = xmlGetLineNoInternal(node->parent, depth + 1);

    return result;
}
