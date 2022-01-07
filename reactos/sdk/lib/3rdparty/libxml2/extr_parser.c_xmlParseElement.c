
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_25__ {int begin_line; int end_line; int * node; void* end_pos; void* begin_pos; } ;
typedef TYPE_3__ xmlParserNodeInfo ;
typedef TYPE_4__* xmlParserCtxtPtr ;
typedef int * xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_27__ {scalar_t__ children; } ;
struct TYPE_26__ {int nsNr; int options; scalar_t__ spaceNr; int* space; scalar_t__ instate; scalar_t__ node; TYPE_2__* input; scalar_t__ record_info; scalar_t__ sax2; int userData; TYPE_1__* sax; int disableSAX; TYPE_5__* myDoc; int vctxt; int valid; scalar_t__ wellFormed; scalar_t__ validate; scalar_t__ nameNr; } ;
struct TYPE_24__ {void* consumed; void* base; int line; } ;
struct TYPE_23__ {int (* endElement ) (int ,int const*) ;int (* endElementNs ) (int ,int const*,int const*,int const*) ;} ;


 void* CUR_PTR ;
 int IS_BYTE_CHAR (char) ;
 int NEXT1 ;
 char NXT (int) ;
 char RAW ;
 int SKIP (int) ;
 int XML_ERR_GT_REQUIRED ;
 int XML_ERR_INTERNAL_ERROR ;
 int XML_ERR_TAG_NOT_FINISHED ;
 scalar_t__ XML_PARSER_EOF ;
 int XML_PARSE_HUGE ;
 int namePop (TYPE_4__*) ;
 int namePush (TYPE_4__*,int const*) ;
 int nodePop (TYPE_4__*) ;
 int nsPop (TYPE_4__*,int) ;
 int spacePop (TYPE_4__*) ;
 int spacePush (TYPE_4__*,int) ;
 int stub1 (int ,int const*,int const*,int const*) ;
 int stub2 (int ,int const*) ;
 int xmlFatalErrMsgInt (TYPE_4__*,int ,char*,unsigned int) ;
 int xmlFatalErrMsgStrIntStr (TYPE_4__*,int ,char*,int const*,int,int *) ;
 int xmlHaltParser (TYPE_4__*) ;
 int xmlParseContent (TYPE_4__*) ;
 int xmlParseEndTag1 (TYPE_4__*,int) ;
 int xmlParseEndTag2 (TYPE_4__*,int const*,int const*,int,int,int) ;
 int * xmlParseStartTag (TYPE_4__*) ;
 int * xmlParseStartTag2 (TYPE_4__*,int const**,int const**,int*) ;
 int xmlParserAddNodeInfo (TYPE_4__*,TYPE_3__*) ;
 unsigned int xmlParserMaxDepth ;
 int xmlValidateRoot (int *,TYPE_5__*) ;

void
xmlParseElement(xmlParserCtxtPtr ctxt) {
    const xmlChar *name;
    const xmlChar *prefix = ((void*)0);
    const xmlChar *URI = ((void*)0);
    xmlParserNodeInfo node_info;
    int line, tlen = 0;
    xmlNodePtr ret;
    int nsNr = ctxt->nsNr;

    if (((unsigned int) ctxt->nameNr > xmlParserMaxDepth) &&
        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
 xmlFatalErrMsgInt(ctxt, XML_ERR_INTERNAL_ERROR,
   "Excessive depth in document: %d use XML_PARSE_HUGE option\n",
     xmlParserMaxDepth);
 xmlHaltParser(ctxt);
 return;
    }


    if (ctxt->record_info) {
        node_info.begin_pos = ctxt->input->consumed +
                          (CUR_PTR - ctxt->input->base);
 node_info.begin_line = ctxt->input->line;
    }

    if (ctxt->spaceNr == 0)
 spacePush(ctxt, -1);
    else if (*ctxt->space == -2)
 spacePush(ctxt, -1);
    else
 spacePush(ctxt, *ctxt->space);

    line = ctxt->input->line;



        name = xmlParseStartTag2(ctxt, &prefix, &URI, &tlen);




    if (ctxt->instate == XML_PARSER_EOF)
 return;
    if (name == ((void*)0)) {
 spacePop(ctxt);
        return;
    }
    namePush(ctxt, name);
    ret = ctxt->node;
    if ((RAW == '/') && (NXT(1) == '>')) {
        SKIP(2);
 if (ctxt->sax2) {
     if ((ctxt->sax != ((void*)0)) && (ctxt->sax->endElementNs != ((void*)0)) &&
  (!ctxt->disableSAX))
  ctxt->sax->endElementNs(ctxt->userData, name, prefix, URI);






 }
 namePop(ctxt);
 spacePop(ctxt);
 if (nsNr != ctxt->nsNr)
     nsPop(ctxt, ctxt->nsNr - nsNr);
 if ( ret != ((void*)0) && ctxt->record_info ) {
    node_info.end_pos = ctxt->input->consumed +
         (CUR_PTR - ctxt->input->base);
    node_info.end_line = ctxt->input->line;
    node_info.node = ret;
    xmlParserAddNodeInfo(ctxt, &node_info);
 }
 return;
    }
    if (RAW == '>') {
        NEXT1;
    } else {
        xmlFatalErrMsgStrIntStr(ctxt, XML_ERR_GT_REQUIRED,
       "Couldn't find end of Start Tag %s line %d\n",
                  name, line, ((void*)0));




 nodePop(ctxt);
 namePop(ctxt);
 spacePop(ctxt);
 if (nsNr != ctxt->nsNr)
     nsPop(ctxt, ctxt->nsNr - nsNr);




 if ( ret != ((void*)0) && ctxt->record_info ) {
    node_info.end_pos = ctxt->input->consumed +
         (CUR_PTR - ctxt->input->base);
    node_info.end_line = ctxt->input->line;
    node_info.node = ret;
    xmlParserAddNodeInfo(ctxt, &node_info);
 }
 return;
    }




    xmlParseContent(ctxt);
    if (ctxt->instate == XML_PARSER_EOF)
 return;
    if (!IS_BYTE_CHAR(RAW)) {
        xmlFatalErrMsgStrIntStr(ctxt, XML_ERR_TAG_NOT_FINISHED,
  "Premature end of data in tag %s line %d\n",
                  name, line, ((void*)0));




 nodePop(ctxt);
 namePop(ctxt);
 spacePop(ctxt);
 if (nsNr != ctxt->nsNr)
     nsPop(ctxt, ctxt->nsNr - nsNr);
 return;
    }




    if (ctxt->sax2) {
 xmlParseEndTag2(ctxt, prefix, URI, line, ctxt->nsNr - nsNr, tlen);
 namePop(ctxt);
    }
    if ( ret != ((void*)0) && ctxt->record_info ) {
       node_info.end_pos = ctxt->input->consumed +
                          (CUR_PTR - ctxt->input->base);
       node_info.end_line = ctxt->input->line;
       node_info.node = ret;
       xmlParserAddNodeInfo(ctxt, &node_info);
    }
}
