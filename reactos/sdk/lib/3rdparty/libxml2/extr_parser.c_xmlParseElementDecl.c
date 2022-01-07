
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_3__* xmlParserCtxtPtr ;
typedef TYPE_4__* xmlElementContentPtr ;
typedef int xmlChar ;
struct TYPE_16__ {int * parent; } ;
struct TYPE_15__ {scalar_t__ external; int inputNr; int myDoc; int userData; TYPE_2__* sax; int disableSAX; TYPE_1__* input; } ;
struct TYPE_14__ {int (* elementDecl ) (int ,int const*,int,TYPE_4__*) ;} ;
struct TYPE_13__ {int id; } ;


 scalar_t__ CMP5 (int ,char,char,char,char,char) ;
 scalar_t__ CMP9 (int ,char,char,char,char,char,char,char,char,char) ;
 int CUR_PTR ;
 int NEXT ;
 char NXT (int) ;
 char RAW ;
 int SKIP (int) ;
 scalar_t__ SKIP_BLANKS ;
 int XML_ELEMENT_TYPE_ANY ;
 int XML_ELEMENT_TYPE_EMPTY ;
 int XML_ERR_ELEMCONTENT_NOT_STARTED ;
 int XML_ERR_ENTITY_BOUNDARY ;
 int XML_ERR_GT_REQUIRED ;
 int XML_ERR_NAME_REQUIRED ;
 int XML_ERR_PEREF_IN_INT_SUBSET ;
 int XML_ERR_SPACE_REQUIRED ;
 int stub1 (int ,int const*,int,TYPE_4__*) ;
 int xmlFatalErr (TYPE_3__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_3__*,int ,char*) ;
 int xmlFreeDocElementContent (int ,TYPE_4__*) ;
 int xmlParseElementContentDecl (TYPE_3__*,int const*,TYPE_4__**) ;
 int * xmlParseName (TYPE_3__*) ;

int
xmlParseElementDecl(xmlParserCtxtPtr ctxt) {
    const xmlChar *name;
    int ret = -1;
    xmlElementContentPtr content = ((void*)0);


    if (CMP9(CUR_PTR, '<', '!', 'E', 'L', 'E', 'M', 'E', 'N', 'T')) {
 int inputid = ctxt->input->id;

 SKIP(9);
 if (SKIP_BLANKS == 0) {
     xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
             "Space required after 'ELEMENT'\n");
     return(-1);
 }
        name = xmlParseName(ctxt);
 if (name == ((void*)0)) {
     xmlFatalErrMsg(ctxt, XML_ERR_NAME_REQUIRED,
      "xmlParseElementDecl: no name for Element\n");
     return(-1);
 }
 if (SKIP_BLANKS == 0) {
     xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
      "Space required after the element name\n");
 }
 if (CMP5(CUR_PTR, 'E', 'M', 'P', 'T', 'Y')) {
     SKIP(5);



     ret = XML_ELEMENT_TYPE_EMPTY;
 } else if ((RAW == 'A') && (NXT(1) == 'N') &&
            (NXT(2) == 'Y')) {
     SKIP(3);



     ret = XML_ELEMENT_TYPE_ANY;
 } else if (RAW == '(') {
     ret = xmlParseElementContentDecl(ctxt, name, &content);
 } else {



     if ((RAW == '%') && (ctxt->external == 0) &&
         (ctxt->inputNr == 1)) {
  xmlFatalErrMsg(ctxt, XML_ERR_PEREF_IN_INT_SUBSET,
   "PEReference: forbidden within markup decl in internal subset\n");
     } else {
  xmlFatalErrMsg(ctxt, XML_ERR_ELEMCONTENT_NOT_STARTED,
        "xmlParseElementDecl: 'EMPTY', 'ANY' or '(' expected\n");
            }
     return(-1);
 }

 SKIP_BLANKS;

 if (RAW != '>') {
     xmlFatalErr(ctxt, XML_ERR_GT_REQUIRED, ((void*)0));
     if (content != ((void*)0)) {
  xmlFreeDocElementContent(ctxt->myDoc, content);
     }
 } else {
     if (inputid != ctxt->input->id) {
  xmlFatalErrMsg(ctxt, XML_ERR_ENTITY_BOUNDARY,
                               "Element declaration doesn't start and stop in"
                               " the same entity\n");
     }

     NEXT;
     if ((ctxt->sax != ((void*)0)) && (!ctxt->disableSAX) &&
  (ctxt->sax->elementDecl != ((void*)0))) {
  if (content != ((void*)0))
      content->parent = ((void*)0);
         ctxt->sax->elementDecl(ctxt->userData, name, ret,
                         content);
  if ((content != ((void*)0)) && (content->parent == ((void*)0))) {






      xmlFreeDocElementContent(ctxt->myDoc, content);
  }
     } else if (content != ((void*)0)) {
  xmlFreeDocElementContent(ctxt->myDoc, content);
     }
 }
    }
    return(ret);
}
