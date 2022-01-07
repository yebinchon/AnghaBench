
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_3__* xmlParserCtxtPtr ;
typedef scalar_t__ xmlCharEncoding ;
typedef char xmlChar ;
struct TYPE_12__ {scalar_t__ errNo; scalar_t__ instate; int wellFormed; int userData; TYPE_2__* sax; scalar_t__ depth; scalar_t__ loadsubset; scalar_t__ validate; int disableSAX; int version; TYPE_1__* input; } ;
struct TYPE_11__ {int (* endDocument ) (int ) ;int (* startDocument ) (int ) ;int (* setDocumentLocator ) (int ,int *) ;} ;
struct TYPE_10__ {int end; int cur; } ;


 scalar_t__ CMP5 (int ,char,char,char,char,char) ;
 scalar_t__ CUR ;
 int CUR_PTR ;
 int GROW ;
 scalar_t__ IS_BLANK_CH (char) ;
 char NXT (int) ;
 char RAW ;
 int SKIP_BLANKS ;
 scalar_t__ XML_CHAR_ENCODING_NONE ;
 int XML_DEFAULT_VERSION ;
 int XML_ERR_DOCUMENT_EMPTY ;
 int XML_ERR_EXTRA_CONTENT ;
 int XML_ERR_NOT_WELL_BALANCED ;
 scalar_t__ XML_ERR_UNSUPPORTED_ENCODING ;
 scalar_t__ XML_PARSER_CONTENT ;
 scalar_t__ XML_PARSER_EOF ;
 int stub1 (int ,int *) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int xmlCharStrdup (int ) ;
 int xmlDefaultSAXHandlerInit () ;
 int xmlDefaultSAXLocator ;
 scalar_t__ xmlDetectCharEncoding (char*,int) ;
 int xmlDetectSAX2 (TYPE_3__*) ;
 int xmlFatalErr (TYPE_3__*,int ,int *) ;
 int xmlParseContent (TYPE_3__*) ;
 int xmlParseXMLDecl (TYPE_3__*) ;
 int xmlSwitchEncoding (TYPE_3__*,scalar_t__) ;

int
xmlParseExtParsedEnt(xmlParserCtxtPtr ctxt) {
    xmlChar start[4];
    xmlCharEncoding enc;

    if ((ctxt == ((void*)0)) || (ctxt->input == ((void*)0)))
        return(-1);

    xmlDefaultSAXHandlerInit();

    xmlDetectSAX2(ctxt);

    GROW;




    if ((ctxt->sax) && (ctxt->sax->setDocumentLocator))
        ctxt->sax->setDocumentLocator(ctxt->userData, &xmlDefaultSAXLocator);






    if ((ctxt->input->end - ctxt->input->cur) >= 4) {
 start[0] = RAW;
 start[1] = NXT(1);
 start[2] = NXT(2);
 start[3] = NXT(3);
 enc = xmlDetectCharEncoding(start, 4);
 if (enc != XML_CHAR_ENCODING_NONE) {
     xmlSwitchEncoding(ctxt, enc);
 }
    }


    if (CUR == 0) {
 xmlFatalErr(ctxt, XML_ERR_DOCUMENT_EMPTY, ((void*)0));
    }




    GROW;
    if ((CMP5(CUR_PTR, '<', '?', 'x', 'm', 'l')) && (IS_BLANK_CH(NXT(5)))) {




 xmlParseXMLDecl(ctxt);
 if (ctxt->errNo == XML_ERR_UNSUPPORTED_ENCODING) {



     return(-1);
 }
 SKIP_BLANKS;
    } else {
 ctxt->version = xmlCharStrdup(XML_DEFAULT_VERSION);
    }
    if ((ctxt->sax) && (ctxt->sax->startDocument) && (!ctxt->disableSAX))
        ctxt->sax->startDocument(ctxt->userData);
    if (ctxt->instate == XML_PARSER_EOF)
 return(-1);




    ctxt->instate = XML_PARSER_CONTENT;
    ctxt->validate = 0;
    ctxt->loadsubset = 0;
    ctxt->depth = 0;

    xmlParseContent(ctxt);
    if (ctxt->instate == XML_PARSER_EOF)
 return(-1);

    if ((RAW == '<') && (NXT(1) == '/')) {
 xmlFatalErr(ctxt, XML_ERR_NOT_WELL_BALANCED, ((void*)0));
    } else if (RAW != 0) {
 xmlFatalErr(ctxt, XML_ERR_EXTRA_CONTENT, ((void*)0));
    }




    if ((ctxt->sax) && (ctxt->sax->endDocument != ((void*)0)))
        ctxt->sax->endDocument(ctxt->userData);

    if (! ctxt->wellFormed) return(-1);
    return(0);
}
