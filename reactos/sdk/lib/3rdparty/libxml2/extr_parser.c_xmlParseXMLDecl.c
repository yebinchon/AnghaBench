
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef char xmlChar ;
struct TYPE_12__ {int options; char* version; scalar_t__ errNo; scalar_t__ instate; TYPE_1__* input; } ;
struct TYPE_11__ {int standalone; int * encoding; } ;


 int CUR_PTR ;
 int GROW ;
 int IS_BLANK_CH (char) ;
 int MOVETO_ENDTAG (int ) ;
 int NEXT ;
 char NXT (int) ;
 char RAW ;
 int SKIP (int) ;
 int SKIP_BLANKS ;
 scalar_t__ XML_DEFAULT_VERSION ;
 int XML_ERR_SPACE_REQUIRED ;
 int XML_ERR_UNKNOWN_VERSION ;
 scalar_t__ XML_ERR_UNSUPPORTED_ENCODING ;
 int XML_ERR_VERSION_MISSING ;
 int XML_ERR_XMLDECL_NOT_FINISHED ;
 scalar_t__ XML_PARSER_EOF ;
 int XML_PARSE_OLD10 ;
 int XML_WAR_UNKNOWN_VERSION ;
 int xmlFatalErr (TYPE_2__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_2__*,int ,char*) ;
 int xmlFatalErrMsgStr (TYPE_2__*,int ,char*,char*) ;
 int xmlFree (void*) ;
 int xmlParseEncodingDecl (TYPE_2__*) ;
 int xmlParseSDDecl (TYPE_2__*) ;
 char* xmlParseVersionInfo (TYPE_2__*) ;
 int xmlStrEqual (char*,char const*) ;
 int xmlWarningMsg (TYPE_2__*,int ,char*,char*,int *) ;

void
xmlParseXMLDecl(xmlParserCtxtPtr ctxt) {
    xmlChar *version;






    ctxt->input->standalone = -2;




    SKIP(5);

    if (!IS_BLANK_CH(RAW)) {
 xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
                "Blank needed after '<?xml'\n");
    }
    SKIP_BLANKS;




    version = xmlParseVersionInfo(ctxt);
    if (version == ((void*)0)) {
 xmlFatalErr(ctxt, XML_ERR_VERSION_MISSING, ((void*)0));
    } else {
 if (!xmlStrEqual(version, (const xmlChar *) XML_DEFAULT_VERSION)) {



     if (ctxt->options & XML_PARSE_OLD10) {
  xmlFatalErrMsgStr(ctxt, XML_ERR_UNKNOWN_VERSION,
             "Unsupported version '%s'\n",
             version);
     } else {
         if ((version[0] == '1') && ((version[1] == '.'))) {
      xmlWarningMsg(ctxt, XML_WAR_UNKNOWN_VERSION,
                    "Unsupported version '%s'\n",
      version, ((void*)0));
  } else {
      xmlFatalErrMsgStr(ctxt, XML_ERR_UNKNOWN_VERSION,
          "Unsupported version '%s'\n",
          version);
  }
     }
 }
 if (ctxt->version != ((void*)0))
     xmlFree((void *) ctxt->version);
 ctxt->version = version;
    }




    if (!IS_BLANK_CH(RAW)) {
        if ((RAW == '?') && (NXT(1) == '>')) {
     SKIP(2);
     return;
 }
 xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED, "Blank needed here\n");
    }
    xmlParseEncodingDecl(ctxt);
    if ((ctxt->errNo == XML_ERR_UNSUPPORTED_ENCODING) ||
         (ctxt->instate == XML_PARSER_EOF)) {



        return;
    }




    if ((ctxt->input->encoding != ((void*)0)) && (!IS_BLANK_CH(RAW))) {
        if ((RAW == '?') && (NXT(1) == '>')) {
     SKIP(2);
     return;
 }
 xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED, "Blank needed here\n");
    }




    GROW;

    SKIP_BLANKS;
    ctxt->input->standalone = xmlParseSDDecl(ctxt);

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
