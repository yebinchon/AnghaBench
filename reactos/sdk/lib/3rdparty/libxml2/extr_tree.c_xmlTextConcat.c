
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_5__ {scalar_t__ type; int * content; int * properties; TYPE_1__* doc; } ;
struct TYPE_4__ {int * dict; } ;


 scalar_t__ XML_CDATA_SECTION_NODE ;
 scalar_t__ XML_COMMENT_NODE ;
 scalar_t__ XML_PI_NODE ;
 scalar_t__ XML_TEXT_NODE ;
 scalar_t__ xmlDictOwns (int *,int *) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int * xmlStrncat (int *,int const*,int) ;
 int * xmlStrncatNew (int *,int const*,int) ;

int
xmlTextConcat(xmlNodePtr node, const xmlChar *content, int len) {
    if (node == ((void*)0)) return(-1);

    if ((node->type != XML_TEXT_NODE) &&
        (node->type != XML_CDATA_SECTION_NODE) &&
 (node->type != XML_COMMENT_NODE) &&
 (node->type != XML_PI_NODE)) {




        return(-1);
    }

    if ((node->content == (xmlChar *) &(node->properties)) ||
        ((node->doc != ((void*)0)) && (node->doc->dict != ((void*)0)) &&
  xmlDictOwns(node->doc->dict, node->content))) {
 node->content = xmlStrncatNew(node->content, content, len);
    } else {
        node->content = xmlStrncat(node->content, content, len);
    }
    node->properties = ((void*)0);
    if (node->content == ((void*)0))
        return(-1);
    return(0);
}
