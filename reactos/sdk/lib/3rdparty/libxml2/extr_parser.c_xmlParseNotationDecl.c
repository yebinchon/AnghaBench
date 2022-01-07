
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_3__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_12__ {int userData; TYPE_2__* sax; int disableSAX; TYPE_1__* input; } ;
struct TYPE_11__ {int (* notationDecl ) (int ,int const*,int *,int *) ;} ;
struct TYPE_10__ {int id; } ;


 scalar_t__ CMP10 (int ,char,char,char,char,char,char,char,char,char,char) ;
 int CUR_PTR ;
 int NEXT ;
 char RAW ;
 int SHRINK ;
 int SKIP (int) ;
 scalar_t__ SKIP_BLANKS ;
 int XML_ERR_ENTITY_BOUNDARY ;
 int XML_ERR_NOTATION_NOT_FINISHED ;
 int XML_ERR_NOTATION_NOT_STARTED ;
 int XML_ERR_SPACE_REQUIRED ;
 int XML_NS_ERR_COLON ;
 int stub1 (int ,int const*,int *,int *) ;
 int xmlFatalErr (TYPE_3__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_3__*,int ,char*) ;
 int xmlFree (int *) ;
 int xmlNsErr (TYPE_3__*,int ,char*,int const*,int *,int *) ;
 int * xmlParseExternalID (TYPE_3__*,int **,int ) ;
 int * xmlParseName (TYPE_3__*) ;
 int * xmlStrchr (int const*,char) ;

void
xmlParseNotationDecl(xmlParserCtxtPtr ctxt) {
    const xmlChar *name;
    xmlChar *Pubid;
    xmlChar *Systemid;

    if (CMP10(CUR_PTR, '<', '!', 'N', 'O', 'T', 'A', 'T', 'I', 'O', 'N')) {
 int inputid = ctxt->input->id;
 SHRINK;
 SKIP(10);
 if (SKIP_BLANKS == 0) {
     xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
      "Space required after '<!NOTATION'\n");
     return;
 }

        name = xmlParseName(ctxt);
 if (name == ((void*)0)) {
     xmlFatalErr(ctxt, XML_ERR_NOTATION_NOT_STARTED, ((void*)0));
     return;
 }
 if (xmlStrchr(name, ':') != ((void*)0)) {
     xmlNsErr(ctxt, XML_NS_ERR_COLON,
       "colons are forbidden from notation names '%s'\n",
       name, ((void*)0), ((void*)0));
 }
 if (SKIP_BLANKS == 0) {
     xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
       "Space required after the NOTATION name'\n");
     return;
 }




 Systemid = xmlParseExternalID(ctxt, &Pubid, 0);
 SKIP_BLANKS;

 if (RAW == '>') {
     if (inputid != ctxt->input->id) {
  xmlFatalErrMsg(ctxt, XML_ERR_ENTITY_BOUNDARY,
                        "Notation declaration doesn't start and stop"
                               " in the same entity\n");
     }
     NEXT;
     if ((ctxt->sax != ((void*)0)) && (!ctxt->disableSAX) &&
  (ctxt->sax->notationDecl != ((void*)0)))
  ctxt->sax->notationDecl(ctxt->userData, name, Pubid, Systemid);
 } else {
     xmlFatalErr(ctxt, XML_ERR_NOTATION_NOT_FINISHED, ((void*)0));
 }
 if (Systemid != ((void*)0)) xmlFree(Systemid);
 if (Pubid != ((void*)0)) xmlFree(Pubid);
    }
}
