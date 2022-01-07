
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef TYPE_3__* xmlElementContentPtr ;
typedef int xmlChar ;
struct TYPE_15__ {scalar_t__ ocur; scalar_t__ type; struct TYPE_15__* c2; struct TYPE_15__* c1; struct TYPE_15__* parent; } ;
struct TYPE_14__ {int options; scalar_t__ instate; TYPE_1__* input; int myDoc; } ;
struct TYPE_13__ {int id; } ;


 int CUR ;
 int GROW ;
 int NEXT ;
 char RAW ;
 int SHRINK ;
 int SKIP_BLANKS ;
 scalar_t__ XML_ELEMENT_CONTENT_ELEMENT ;
 scalar_t__ XML_ELEMENT_CONTENT_MULT ;
 void* XML_ELEMENT_CONTENT_ONCE ;
 scalar_t__ XML_ELEMENT_CONTENT_OPT ;
 scalar_t__ XML_ELEMENT_CONTENT_OR ;
 scalar_t__ XML_ELEMENT_CONTENT_PLUS ;
 scalar_t__ XML_ELEMENT_CONTENT_SEQ ;
 int XML_ERR_ELEMCONTENT_NOT_FINISHED ;
 int XML_ERR_ELEMCONTENT_NOT_STARTED ;
 int XML_ERR_ENTITY_BOUNDARY ;
 int XML_ERR_SEPARATOR_REQUIRED ;
 scalar_t__ XML_PARSER_EOF ;
 int XML_PARSE_HUGE ;
 int xmlErrMemory (TYPE_2__*,int *) ;
 int xmlFatalErr (TYPE_2__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_2__*,int ,char*) ;
 int xmlFatalErrMsgInt (TYPE_2__*,int ,char*,int) ;
 int xmlFreeDocElementContent (int ,TYPE_3__*) ;
 TYPE_3__* xmlNewDocElementContent (int ,int const*,scalar_t__) ;
 int* xmlParseName (TYPE_2__*) ;

__attribute__((used)) static xmlElementContentPtr
xmlParseElementChildrenContentDeclPriv(xmlParserCtxtPtr ctxt, int inputchk,
                                       int depth) {
    xmlElementContentPtr ret = ((void*)0), cur = ((void*)0), last = ((void*)0), op = ((void*)0);
    const xmlChar *elem;
    xmlChar type = 0;

    if (((depth > 128) && ((ctxt->options & XML_PARSE_HUGE) == 0)) ||
        (depth > 2048)) {
        xmlFatalErrMsgInt(ctxt, XML_ERR_ELEMCONTENT_NOT_FINISHED,
"xmlParseElementChildrenContentDecl : depth %d too deep, use XML_PARSE_HUGE\n",
                          depth);
 return(((void*)0));
    }
    SKIP_BLANKS;
    GROW;
    if (RAW == '(') {
 int inputid = ctxt->input->id;


 NEXT;
 SKIP_BLANKS;
        cur = ret = xmlParseElementChildrenContentDeclPriv(ctxt, inputid,
                                                           depth + 1);
 SKIP_BLANKS;
 GROW;
    } else {
 elem = xmlParseName(ctxt);
 if (elem == ((void*)0)) {
     xmlFatalErr(ctxt, XML_ERR_ELEMCONTENT_NOT_STARTED, ((void*)0));
     return(((void*)0));
 }
        cur = ret = xmlNewDocElementContent(ctxt->myDoc, elem, XML_ELEMENT_CONTENT_ELEMENT);
 if (cur == ((void*)0)) {
     xmlErrMemory(ctxt, ((void*)0));
     return(((void*)0));
 }
 GROW;
 if (RAW == '?') {
     cur->ocur = XML_ELEMENT_CONTENT_OPT;
     NEXT;
 } else if (RAW == '*') {
     cur->ocur = XML_ELEMENT_CONTENT_MULT;
     NEXT;
 } else if (RAW == '+') {
     cur->ocur = XML_ELEMENT_CONTENT_PLUS;
     NEXT;
 } else {
     cur->ocur = XML_ELEMENT_CONTENT_ONCE;
 }
 GROW;
    }
    SKIP_BLANKS;
    SHRINK;
    while ((RAW != ')') && (ctxt->instate != XML_PARSER_EOF)) {



        if (RAW == ',') {
     if (type == 0) type = CUR;




     else if (type != CUR) {
  xmlFatalErrMsgInt(ctxt, XML_ERR_SEPARATOR_REQUIRED,
      "xmlParseElementChildrenContentDecl : '%c' expected\n",
                    type);
  if ((last != ((void*)0)) && (last != ret))
      xmlFreeDocElementContent(ctxt->myDoc, last);
  if (ret != ((void*)0))
      xmlFreeDocElementContent(ctxt->myDoc, ret);
  return(((void*)0));
     }
     NEXT;

     op = xmlNewDocElementContent(ctxt->myDoc, ((void*)0), XML_ELEMENT_CONTENT_SEQ);
     if (op == ((void*)0)) {
  if ((last != ((void*)0)) && (last != ret))
      xmlFreeDocElementContent(ctxt->myDoc, last);
         xmlFreeDocElementContent(ctxt->myDoc, ret);
  return(((void*)0));
     }
     if (last == ((void*)0)) {
  op->c1 = ret;
  if (ret != ((void*)0))
      ret->parent = op;
  ret = cur = op;
     } else {
         cur->c2 = op;
  if (op != ((void*)0))
      op->parent = cur;
  op->c1 = last;
  if (last != ((void*)0))
      last->parent = op;
  cur =op;
  last = ((void*)0);
     }
 } else if (RAW == '|') {
     if (type == 0) type = CUR;




     else if (type != CUR) {
  xmlFatalErrMsgInt(ctxt, XML_ERR_SEPARATOR_REQUIRED,
      "xmlParseElementChildrenContentDecl : '%c' expected\n",
      type);
  if ((last != ((void*)0)) && (last != ret))
      xmlFreeDocElementContent(ctxt->myDoc, last);
  if (ret != ((void*)0))
      xmlFreeDocElementContent(ctxt->myDoc, ret);
  return(((void*)0));
     }
     NEXT;

     op = xmlNewDocElementContent(ctxt->myDoc, ((void*)0), XML_ELEMENT_CONTENT_OR);
     if (op == ((void*)0)) {
  if ((last != ((void*)0)) && (last != ret))
      xmlFreeDocElementContent(ctxt->myDoc, last);
  if (ret != ((void*)0))
      xmlFreeDocElementContent(ctxt->myDoc, ret);
  return(((void*)0));
     }
     if (last == ((void*)0)) {
  op->c1 = ret;
  if (ret != ((void*)0))
      ret->parent = op;
  ret = cur = op;
     } else {
         cur->c2 = op;
  if (op != ((void*)0))
      op->parent = cur;
  op->c1 = last;
  if (last != ((void*)0))
      last->parent = op;
  cur =op;
  last = ((void*)0);
     }
 } else {
     xmlFatalErr(ctxt, XML_ERR_ELEMCONTENT_NOT_FINISHED, ((void*)0));
     if ((last != ((void*)0)) && (last != ret))
         xmlFreeDocElementContent(ctxt->myDoc, last);
     if (ret != ((void*)0))
  xmlFreeDocElementContent(ctxt->myDoc, ret);
     return(((void*)0));
 }
 GROW;
 SKIP_BLANKS;
 GROW;
 if (RAW == '(') {
     int inputid = ctxt->input->id;

     NEXT;
     SKIP_BLANKS;
     last = xmlParseElementChildrenContentDeclPriv(ctxt, inputid,
                                                          depth + 1);
     SKIP_BLANKS;
 } else {
     elem = xmlParseName(ctxt);
     if (elem == ((void*)0)) {
  xmlFatalErr(ctxt, XML_ERR_ELEMCONTENT_NOT_STARTED, ((void*)0));
  if (ret != ((void*)0))
      xmlFreeDocElementContent(ctxt->myDoc, ret);
  return(((void*)0));
     }
     last = xmlNewDocElementContent(ctxt->myDoc, elem, XML_ELEMENT_CONTENT_ELEMENT);
     if (last == ((void*)0)) {
  if (ret != ((void*)0))
      xmlFreeDocElementContent(ctxt->myDoc, ret);
  return(((void*)0));
     }
     if (RAW == '?') {
  last->ocur = XML_ELEMENT_CONTENT_OPT;
  NEXT;
     } else if (RAW == '*') {
  last->ocur = XML_ELEMENT_CONTENT_MULT;
  NEXT;
     } else if (RAW == '+') {
  last->ocur = XML_ELEMENT_CONTENT_PLUS;
  NEXT;
     } else {
  last->ocur = XML_ELEMENT_CONTENT_ONCE;
     }
 }
 SKIP_BLANKS;
 GROW;
    }
    if ((cur != ((void*)0)) && (last != ((void*)0))) {
        cur->c2 = last;
 if (last != ((void*)0))
     last->parent = cur;
    }
    if (ctxt->input->id != inputchk) {
 xmlFatalErrMsg(ctxt, XML_ERR_ENTITY_BOUNDARY,
                       "Element content declaration doesn't start and stop in"
                       " the same entity\n");
    }
    NEXT;
    if (RAW == '?') {
 if (ret != ((void*)0)) {
     if ((ret->ocur == XML_ELEMENT_CONTENT_PLUS) ||
         (ret->ocur == XML_ELEMENT_CONTENT_MULT))
         ret->ocur = XML_ELEMENT_CONTENT_MULT;
     else
         ret->ocur = XML_ELEMENT_CONTENT_OPT;
 }
 NEXT;
    } else if (RAW == '*') {
 if (ret != ((void*)0)) {
     ret->ocur = XML_ELEMENT_CONTENT_MULT;
     cur = ret;




     while ((cur != ((void*)0)) && (cur->type == XML_ELEMENT_CONTENT_OR)) {
  if ((cur->c1 != ((void*)0)) &&
             ((cur->c1->ocur == XML_ELEMENT_CONTENT_OPT) ||
       (cur->c1->ocur == XML_ELEMENT_CONTENT_MULT)))
      cur->c1->ocur = XML_ELEMENT_CONTENT_ONCE;
  if ((cur->c2 != ((void*)0)) &&
             ((cur->c2->ocur == XML_ELEMENT_CONTENT_OPT) ||
       (cur->c2->ocur == XML_ELEMENT_CONTENT_MULT)))
      cur->c2->ocur = XML_ELEMENT_CONTENT_ONCE;
  cur = cur->c2;
     }
 }
 NEXT;
    } else if (RAW == '+') {
 if (ret != ((void*)0)) {
     int found = 0;

     if ((ret->ocur == XML_ELEMENT_CONTENT_OPT) ||
         (ret->ocur == XML_ELEMENT_CONTENT_MULT))
         ret->ocur = XML_ELEMENT_CONTENT_MULT;
     else
         ret->ocur = XML_ELEMENT_CONTENT_PLUS;





     while ((cur != ((void*)0)) && (cur->type == XML_ELEMENT_CONTENT_OR)) {
  if ((cur->c1 != ((void*)0)) &&
             ((cur->c1->ocur == XML_ELEMENT_CONTENT_OPT) ||
       (cur->c1->ocur == XML_ELEMENT_CONTENT_MULT))) {
      cur->c1->ocur = XML_ELEMENT_CONTENT_ONCE;
      found = 1;
  }
  if ((cur->c2 != ((void*)0)) &&
             ((cur->c2->ocur == XML_ELEMENT_CONTENT_OPT) ||
       (cur->c2->ocur == XML_ELEMENT_CONTENT_MULT))) {
      cur->c2->ocur = XML_ELEMENT_CONTENT_ONCE;
      found = 1;
  }
  cur = cur->c2;
     }
     if (found)
  ret->ocur = XML_ELEMENT_CONTENT_MULT;
 }
 NEXT;
    }
    return(ret);
}
