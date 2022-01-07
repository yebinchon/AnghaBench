
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


typedef TYPE_4__* xmlParserCtxtPtr ;
typedef scalar_t__ xmlCharEncoding ;
typedef char xmlChar ;
struct TYPE_21__ {scalar_t__ instate; scalar_t__ errNo; int inSubset; int options; scalar_t__ valid; scalar_t__ wellFormed; TYPE_12__* myDoc; scalar_t__ nsWellFormed; int userData; TYPE_3__* sax; int extSubURI; int extSubSystem; int intSubName; int disableSAX; TYPE_2__* input; int version; int standalone; int * encoding; } ;
struct TYPE_20__ {int (* endDocument ) (int ) ;int (* externalSubset ) (int ,int ,int ,int ) ;int (* startDocument ) (int ) ;int (* setDocumentLocator ) (int ,int *) ;} ;
struct TYPE_19__ {int end; int cur; TYPE_1__* buf; int standalone; } ;
struct TYPE_18__ {scalar_t__ compressed; } ;
struct TYPE_17__ {scalar_t__ compression; int properties; int version; } ;


 scalar_t__ CMP5 (int ,char,char,char,char,char) ;
 scalar_t__ CMP9 (int ,char,char,char,char,char,char,char,char,char) ;
 scalar_t__ CUR ;
 int CUR_PTR ;
 int GROW ;
 scalar_t__ IS_BLANK_CH (char) ;
 char NXT (int) ;
 char RAW ;
 int SAX_COMPAT_MODE ;
 int SKIP_BLANKS ;
 scalar_t__ XML_CHAR_ENCODING_NONE ;
 int XML_DEFAULT_VERSION ;
 int XML_DOC_DTDVALID ;
 int XML_DOC_NSVALID ;
 int XML_DOC_OLD10 ;
 int XML_DOC_WELLFORMED ;
 int XML_ERR_DOCUMENT_EMPTY ;
 int XML_ERR_DOCUMENT_END ;
 scalar_t__ XML_ERR_UNSUPPORTED_ENCODING ;
 scalar_t__ XML_PARSER_CONTENT ;
 scalar_t__ XML_PARSER_DTD ;
 scalar_t__ XML_PARSER_EOF ;
 scalar_t__ XML_PARSER_EPILOG ;
 scalar_t__ XML_PARSER_PROLOG ;
 int XML_PARSE_OLD10 ;
 int stub1 (int ,int *) ;
 int stub2 (int ) ;
 int stub3 (int ,int ,int ,int ) ;
 int stub4 (int ) ;
 int xmlCharStrdup (int ) ;
 int xmlCleanSpecialAttr (TYPE_4__*) ;
 int xmlDefaultSAXLocator ;
 scalar_t__ xmlDetectCharEncoding (char*,int) ;
 int xmlDetectSAX2 (TYPE_4__*) ;
 int xmlFatalErr (TYPE_4__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_4__*,int ,char*) ;
 int xmlFreeDoc (TYPE_12__*) ;
 int xmlInitParser () ;
 int xmlParseDocTypeDecl (TYPE_4__*) ;
 int xmlParseElement (TYPE_4__*) ;
 int xmlParseInternalSubset (TYPE_4__*) ;
 int xmlParseMisc (TYPE_4__*) ;
 int xmlParseXMLDecl (TYPE_4__*) ;
 scalar_t__ xmlStrEqual (int ,int ) ;
 int xmlSwitchEncoding (TYPE_4__*,scalar_t__) ;

int
xmlParseDocument(xmlParserCtxtPtr ctxt) {
    xmlChar start[4];
    xmlCharEncoding enc;

    xmlInitParser();

    if ((ctxt == ((void*)0)) || (ctxt->input == ((void*)0)))
        return(-1);

    GROW;




    xmlDetectSAX2(ctxt);




    if ((ctxt->sax) && (ctxt->sax->setDocumentLocator))
        ctxt->sax->setDocumentLocator(ctxt->userData, &xmlDefaultSAXLocator);
    if (ctxt->instate == XML_PARSER_EOF)
 return(-1);

    if ((ctxt->encoding == ((void*)0)) &&
        ((ctxt->input->end - ctxt->input->cur) >= 4)) {





 start[0] = RAW;
 start[1] = NXT(1);
 start[2] = NXT(2);
 start[3] = NXT(3);
 enc = xmlDetectCharEncoding(&start[0], 4);
 if (enc != XML_CHAR_ENCODING_NONE) {
     xmlSwitchEncoding(ctxt, enc);
 }
    }


    if (CUR == 0) {
 xmlFatalErr(ctxt, XML_ERR_DOCUMENT_EMPTY, ((void*)0));
 return(-1);
    }







    if ((ctxt->input->end - ctxt->input->cur) < 35) {
       GROW;
    }
    if ((CMP5(CUR_PTR, '<', '?', 'x', 'm', 'l')) && (IS_BLANK_CH(NXT(5)))) {




 xmlParseXMLDecl(ctxt);
 if ((ctxt->errNo == XML_ERR_UNSUPPORTED_ENCODING) ||
     (ctxt->instate == XML_PARSER_EOF)) {



     return(-1);
 }
 ctxt->standalone = ctxt->input->standalone;
 SKIP_BLANKS;
    } else {
 ctxt->version = xmlCharStrdup(XML_DEFAULT_VERSION);
    }
    if ((ctxt->sax) && (ctxt->sax->startDocument) && (!ctxt->disableSAX))
        ctxt->sax->startDocument(ctxt->userData);
    if (ctxt->instate == XML_PARSER_EOF)
 return(-1);
    if ((ctxt->myDoc != ((void*)0)) && (ctxt->input != ((void*)0)) &&
        (ctxt->input->buf != ((void*)0)) && (ctxt->input->buf->compressed >= 0)) {
 ctxt->myDoc->compression = ctxt->input->buf->compressed;
    }




    GROW;
    xmlParseMisc(ctxt);





    GROW;
    if (CMP9(CUR_PTR, '<', '!', 'D', 'O', 'C', 'T', 'Y', 'P', 'E')) {

 ctxt->inSubset = 1;
 xmlParseDocTypeDecl(ctxt);
 if (RAW == '[') {
     ctxt->instate = XML_PARSER_DTD;
     xmlParseInternalSubset(ctxt);
     if (ctxt->instate == XML_PARSER_EOF)
  return(-1);
 }




 ctxt->inSubset = 2;
 if ((ctxt->sax != ((void*)0)) && (ctxt->sax->externalSubset != ((void*)0)) &&
     (!ctxt->disableSAX))
     ctxt->sax->externalSubset(ctxt->userData, ctxt->intSubName,
                               ctxt->extSubSystem, ctxt->extSubURI);
 if (ctxt->instate == XML_PARSER_EOF)
     return(-1);
 ctxt->inSubset = 0;

        xmlCleanSpecialAttr(ctxt);

 ctxt->instate = XML_PARSER_PROLOG;
 xmlParseMisc(ctxt);
    }




    GROW;
    if (RAW != '<') {
 xmlFatalErrMsg(ctxt, XML_ERR_DOCUMENT_EMPTY,
         "Start tag expected, '<' not found\n");
    } else {
 ctxt->instate = XML_PARSER_CONTENT;
 xmlParseElement(ctxt);
 ctxt->instate = XML_PARSER_EPILOG;





 xmlParseMisc(ctxt);

 if (RAW != 0) {
     xmlFatalErr(ctxt, XML_ERR_DOCUMENT_END, ((void*)0));
 }
 ctxt->instate = XML_PARSER_EOF;
    }




    if ((ctxt->sax) && (ctxt->sax->endDocument != ((void*)0)))
        ctxt->sax->endDocument(ctxt->userData);




    if ((ctxt->myDoc != ((void*)0)) &&
 (xmlStrEqual(ctxt->myDoc->version, SAX_COMPAT_MODE))) {
 xmlFreeDoc(ctxt->myDoc);
 ctxt->myDoc = ((void*)0);
    }

    if ((ctxt->wellFormed) && (ctxt->myDoc != ((void*)0))) {
        ctxt->myDoc->properties |= XML_DOC_WELLFORMED;
 if (ctxt->valid)
     ctxt->myDoc->properties |= XML_DOC_DTDVALID;
 if (ctxt->nsWellFormed)
     ctxt->myDoc->properties |= XML_DOC_NSVALID;
 if (ctxt->options & XML_PARSE_OLD10)
     ctxt->myDoc->properties |= XML_DOC_OLD10;
    }
    if (! ctxt->wellFormed) {
 ctxt->valid = 0;
 return(-1);
    }
    return(0);
}
