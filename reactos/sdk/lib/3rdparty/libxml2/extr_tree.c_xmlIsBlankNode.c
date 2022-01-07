
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__* content; } ;
typedef TYPE_1__ xmlNode ;
typedef scalar_t__ xmlChar ;


 int IS_BLANK_CH (scalar_t__ const) ;
 scalar_t__ XML_CDATA_SECTION_NODE ;
 scalar_t__ XML_TEXT_NODE ;

int
xmlIsBlankNode(const xmlNode *node) {
    const xmlChar *cur;
    if (node == ((void*)0)) return(0);

    if ((node->type != XML_TEXT_NODE) &&
        (node->type != XML_CDATA_SECTION_NODE))
 return(0);
    if (node->content == ((void*)0)) return(1);
    cur = node->content;
    while (*cur != 0) {
 if (!IS_BLANK_CH(*cur)) return(0);
 cur++;
    }

    return(1);
}
