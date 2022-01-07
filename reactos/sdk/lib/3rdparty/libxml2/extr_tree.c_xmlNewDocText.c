
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef int xmlDoc ;
typedef int xmlChar ;
struct TYPE_4__ {int * doc; } ;


 TYPE_1__* xmlNewText (int const*) ;

xmlNodePtr
xmlNewDocText(const xmlDoc *doc, const xmlChar *content) {
    xmlNodePtr cur;

    cur = xmlNewText(content);
    if (cur != ((void*)0)) cur->doc = (xmlDoc *)doc;
    return(cur);
}
