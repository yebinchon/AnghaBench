
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ xmlNode ;


 scalar_t__ XML_TEXT_NODE ;

int
xmlNodeIsText(const xmlNode *node) {
    if (node == ((void*)0)) return(0);

    if (node->type == XML_TEXT_NODE) return(1);
    return(0);
}
