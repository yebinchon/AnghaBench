
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef int * xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_7__ {scalar_t__ type; int * children; int * content; int name; } ;
struct TYPE_6__ {int* space; TYPE_3__* node; int * myDoc; TYPE_1__* sax; } ;
struct TYPE_5__ {scalar_t__ ignorableWhitespace; scalar_t__ characters; } ;


 int IS_BLANK_CH (int const) ;
 char NXT (int) ;
 char RAW ;
 scalar_t__ XML_ELEMENT_NODE ;
 int * xmlGetLastChild (TYPE_3__*) ;
 int xmlIsMixedElement (int *,int ) ;
 scalar_t__ xmlNodeIsText (int *) ;

__attribute__((used)) static int areBlanks(xmlParserCtxtPtr ctxt, const xmlChar *str, int len,
                     int blank_chars) {
    int i, ret;
    xmlNodePtr lastChild;





    if (ctxt->sax->ignorableWhitespace == ctxt->sax->characters)
 return(0);




    if ((ctxt->space == ((void*)0)) || (*(ctxt->space) == 1) ||
        (*(ctxt->space) == -2))
 return(0);




    if (blank_chars == 0) {
 for (i = 0;i < len;i++)
     if (!(IS_BLANK_CH(str[i]))) return(0);
    }




    if (ctxt->node == ((void*)0)) return(0);
    if (ctxt->myDoc != ((void*)0)) {
 ret = xmlIsMixedElement(ctxt->myDoc, ctxt->node->name);
        if (ret == 0) return(1);
        if (ret == 1) return(0);
    }




    if ((RAW != '<') && (RAW != 0xD)) return(0);
    if ((ctxt->node->children == ((void*)0)) &&
 (RAW == '<') && (NXT(1) == '/')) return(0);

    lastChild = xmlGetLastChild(ctxt->node);
    if (lastChild == ((void*)0)) {
        if ((ctxt->node->type != XML_ELEMENT_NODE) &&
            (ctxt->node->content != ((void*)0))) return(0);
    } else if (xmlNodeIsText(lastChild))
        return(0);
    else if ((ctxt->node->children != ((void*)0)) &&
             (xmlNodeIsText(ctxt->node->children)))
        return(0);
    return(1);
}
