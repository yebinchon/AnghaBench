
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_9__ {scalar_t__ errNo; TYPE_1__* input; } ;
struct TYPE_8__ {int * version; } ;


 scalar_t__ CMP5 (int ,char,char,char,char,char) ;
 int CUR_PTR ;
 scalar_t__ IS_BLANK_CH (char) ;
 int MOVETO_ENDTAG (int ) ;
 int NEXT ;
 char NXT (int) ;
 char RAW ;
 int SKIP (int) ;
 scalar_t__ SKIP_BLANKS ;
 int XML_DEFAULT_VERSION ;
 int XML_ERR_MISSING_ENCODING ;
 scalar_t__ XML_ERR_OK ;
 int XML_ERR_SPACE_REQUIRED ;
 scalar_t__ XML_ERR_UNSUPPORTED_ENCODING ;
 int XML_ERR_XMLDECL_NOT_FINISHED ;
 int XML_ERR_XMLDECL_NOT_STARTED ;
 int * xmlCharStrdup (int ) ;
 int xmlFatalErr (TYPE_2__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_2__*,int ,char*) ;
 int * xmlParseEncodingDecl (TYPE_2__*) ;
 int * xmlParseVersionInfo (TYPE_2__*) ;

void
xmlParseTextDecl(xmlParserCtxtPtr ctxt) {
    xmlChar *version;
    const xmlChar *encoding;




    if ((CMP5(CUR_PTR, '<', '?', 'x', 'm', 'l')) && (IS_BLANK_CH(NXT(5)))) {
 SKIP(5);
    } else {
 xmlFatalErr(ctxt, XML_ERR_XMLDECL_NOT_STARTED, ((void*)0));
 return;
    }

    if (SKIP_BLANKS == 0) {
 xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
         "Space needed after '<?xml'\n");
    }




    version = xmlParseVersionInfo(ctxt);
    if (version == ((void*)0))
 version = xmlCharStrdup(XML_DEFAULT_VERSION);
    else {
 if (SKIP_BLANKS == 0) {
     xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
             "Space needed here\n");
 }
    }
    ctxt->input->version = version;




    encoding = xmlParseEncodingDecl(ctxt);
    if (ctxt->errNo == XML_ERR_UNSUPPORTED_ENCODING) {



        return;
    }
    if ((encoding == ((void*)0)) && (ctxt->errNo == XML_ERR_OK)) {
 xmlFatalErrMsg(ctxt, XML_ERR_MISSING_ENCODING,
         "Missing encoding in text declaration\n");
    }

    SKIP_BLANKS;
    if ((RAW == '?') && (NXT(1) == '>')) {
        SKIP(2);
    } else if (RAW == '>') {

 xmlFatalErr(ctxt, XML_ERR_XMLDECL_NOT_FINISHED, ((void*)0));
 NEXT;
    } else {
 xmlFatalErr(ctxt, XML_ERR_XMLDECL_NOT_FINISHED, ((void*)0));
 MOVETO_ENDTAG(CUR_PTR);
 NEXT;
    }
}
