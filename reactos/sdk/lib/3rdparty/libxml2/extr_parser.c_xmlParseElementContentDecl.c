
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef int * xmlElementContentPtr ;
typedef int xmlChar ;
struct TYPE_8__ {scalar_t__ instate; TYPE_1__* input; } ;
struct TYPE_7__ {int id; } ;


 scalar_t__ CMP7 (int ,char,char,char,char,char,char,char) ;
 int CUR_PTR ;
 int GROW ;
 int NEXT ;
 char RAW ;
 int SKIP_BLANKS ;
 int XML_ELEMENT_TYPE_ELEMENT ;
 int XML_ELEMENT_TYPE_MIXED ;
 int XML_ERR_ELEMCONTENT_NOT_STARTED ;
 scalar_t__ XML_PARSER_EOF ;
 int xmlFatalErrMsgStr (TYPE_2__*,int ,char*,int const*) ;
 int * xmlParseElementChildrenContentDeclPriv (TYPE_2__*,int,int) ;
 int * xmlParseElementMixedContentDecl (TYPE_2__*,int) ;

int
xmlParseElementContentDecl(xmlParserCtxtPtr ctxt, const xmlChar *name,
                           xmlElementContentPtr *result) {

    xmlElementContentPtr tree = ((void*)0);
    int inputid = ctxt->input->id;
    int res;

    *result = ((void*)0);

    if (RAW != '(') {
 xmlFatalErrMsgStr(ctxt, XML_ERR_ELEMCONTENT_NOT_STARTED,
  "xmlParseElementContentDecl : %s '(' expected\n", name);
 return(-1);
    }
    NEXT;
    GROW;
    if (ctxt->instate == XML_PARSER_EOF)
        return(-1);
    SKIP_BLANKS;
    if (CMP7(CUR_PTR, '#', 'P', 'C', 'D', 'A', 'T', 'A')) {
        tree = xmlParseElementMixedContentDecl(ctxt, inputid);
 res = XML_ELEMENT_TYPE_MIXED;
    } else {
        tree = xmlParseElementChildrenContentDeclPriv(ctxt, inputid, 1);
 res = XML_ELEMENT_TYPE_ELEMENT;
    }
    SKIP_BLANKS;
    *result = tree;
    return(res);
}
