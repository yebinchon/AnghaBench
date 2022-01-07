
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef TYPE_3__* xmlElementContentPtr ;
typedef int xmlChar ;
struct TYPE_12__ {void* ocur; struct TYPE_12__* parent; struct TYPE_12__* c2; struct TYPE_12__* c1; } ;
struct TYPE_11__ {scalar_t__ instate; int myDoc; TYPE_1__* input; } ;
struct TYPE_10__ {int id; } ;


 scalar_t__ CMP7 (int ,char,char,char,char,char,char,char) ;
 int CUR_PTR ;
 int GROW ;
 int NEXT ;
 char NXT (int) ;
 char RAW ;
 int SHRINK ;
 int SKIP (int) ;
 int SKIP_BLANKS ;
 int XML_ELEMENT_CONTENT_ELEMENT ;
 void* XML_ELEMENT_CONTENT_MULT ;
 int XML_ELEMENT_CONTENT_OR ;
 int XML_ELEMENT_CONTENT_PCDATA ;
 int XML_ERR_ENTITY_BOUNDARY ;
 int XML_ERR_MIXED_NOT_STARTED ;
 int XML_ERR_NAME_REQUIRED ;
 int XML_ERR_PCDATA_REQUIRED ;
 scalar_t__ XML_PARSER_EOF ;
 int xmlFatalErr (TYPE_2__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_2__*,int ,char*) ;
 int xmlFreeDocElementContent (int ,TYPE_3__*) ;
 void* xmlNewDocElementContent (int ,int const*,int ) ;
 int * xmlParseName (TYPE_2__*) ;

xmlElementContentPtr
xmlParseElementMixedContentDecl(xmlParserCtxtPtr ctxt, int inputchk) {
    xmlElementContentPtr ret = ((void*)0), cur = ((void*)0), n;
    const xmlChar *elem = ((void*)0);

    GROW;
    if (CMP7(CUR_PTR, '#', 'P', 'C', 'D', 'A', 'T', 'A')) {
 SKIP(7);
 SKIP_BLANKS;
 SHRINK;
 if (RAW == ')') {
     if (ctxt->input->id != inputchk) {
  xmlFatalErrMsg(ctxt, XML_ERR_ENTITY_BOUNDARY,
                               "Element content declaration doesn't start and"
                               " stop in the same entity\n");
     }
     NEXT;
     ret = xmlNewDocElementContent(ctxt->myDoc, ((void*)0), XML_ELEMENT_CONTENT_PCDATA);
     if (ret == ((void*)0))
         return(((void*)0));
     if (RAW == '*') {
  ret->ocur = XML_ELEMENT_CONTENT_MULT;
  NEXT;
     }
     return(ret);
 }
 if ((RAW == '(') || (RAW == '|')) {
     ret = cur = xmlNewDocElementContent(ctxt->myDoc, ((void*)0), XML_ELEMENT_CONTENT_PCDATA);
     if (ret == ((void*)0)) return(((void*)0));
 }
 while ((RAW == '|') && (ctxt->instate != XML_PARSER_EOF)) {
     NEXT;
     if (elem == ((void*)0)) {
         ret = xmlNewDocElementContent(ctxt->myDoc, ((void*)0), XML_ELEMENT_CONTENT_OR);
  if (ret == ((void*)0)) return(((void*)0));
  ret->c1 = cur;
  if (cur != ((void*)0))
      cur->parent = ret;
  cur = ret;
     } else {
         n = xmlNewDocElementContent(ctxt->myDoc, ((void*)0), XML_ELEMENT_CONTENT_OR);
  if (n == ((void*)0)) return(((void*)0));
  n->c1 = xmlNewDocElementContent(ctxt->myDoc, elem, XML_ELEMENT_CONTENT_ELEMENT);
  if (n->c1 != ((void*)0))
      n->c1->parent = n;
         cur->c2 = n;
  if (n != ((void*)0))
      n->parent = cur;
  cur = n;
     }
     SKIP_BLANKS;
     elem = xmlParseName(ctxt);
     if (elem == ((void*)0)) {
  xmlFatalErrMsg(ctxt, XML_ERR_NAME_REQUIRED,
   "xmlParseElementMixedContentDecl : Name expected\n");
  xmlFreeDocElementContent(ctxt->myDoc, ret);
  return(((void*)0));
     }
     SKIP_BLANKS;
     GROW;
 }
 if ((RAW == ')') && (NXT(1) == '*')) {
     if (elem != ((void*)0)) {
  cur->c2 = xmlNewDocElementContent(ctxt->myDoc, elem,
                                 XML_ELEMENT_CONTENT_ELEMENT);
  if (cur->c2 != ((void*)0))
      cur->c2->parent = cur;
            }
            if (ret != ((void*)0))
                ret->ocur = XML_ELEMENT_CONTENT_MULT;
     if (ctxt->input->id != inputchk) {
  xmlFatalErrMsg(ctxt, XML_ERR_ENTITY_BOUNDARY,
                               "Element content declaration doesn't start and"
                               " stop in the same entity\n");
     }
     SKIP(2);
 } else {
     xmlFreeDocElementContent(ctxt->myDoc, ret);
     xmlFatalErr(ctxt, XML_ERR_MIXED_NOT_STARTED, ((void*)0));
     return(((void*)0));
 }

    } else {
 xmlFatalErr(ctxt, XML_ERR_PCDATA_REQUIRED, ((void*)0));
    }
    return(ret);
}
