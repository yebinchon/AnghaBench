
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_9__ {int hasExternalSubset; scalar_t__ instate; int userData; TYPE_1__* sax; int disableSAX; int * extSubSystem; int * extSubURI; int const* intSubName; } ;
struct TYPE_8__ {int (* internalSubset ) (int ,int const*,int *,int *) ;} ;


 int NEXT ;
 char RAW ;
 int SKIP (int) ;
 int SKIP_BLANKS ;
 int XML_ERR_DOCTYPE_NOT_FINISHED ;
 int XML_ERR_NAME_REQUIRED ;
 scalar_t__ XML_PARSER_EOF ;
 int stub1 (int ,int const*,int *,int *) ;
 int xmlFatalErr (TYPE_2__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_2__*,int ,char*) ;
 int * xmlParseExternalID (TYPE_2__*,int **,int) ;
 int * xmlParseName (TYPE_2__*) ;

void
xmlParseDocTypeDecl(xmlParserCtxtPtr ctxt) {
    const xmlChar *name = ((void*)0);
    xmlChar *ExternalID = ((void*)0);
    xmlChar *URI = ((void*)0);




    SKIP(9);

    SKIP_BLANKS;




    name = xmlParseName(ctxt);
    if (name == ((void*)0)) {
 xmlFatalErrMsg(ctxt, XML_ERR_NAME_REQUIRED,
         "xmlParseDocTypeDecl : no DOCTYPE name !\n");
    }
    ctxt->intSubName = name;

    SKIP_BLANKS;




    URI = xmlParseExternalID(ctxt, &ExternalID, 1);

    if ((URI != ((void*)0)) || (ExternalID != ((void*)0))) {
        ctxt->hasExternalSubset = 1;
    }
    ctxt->extSubURI = URI;
    ctxt->extSubSystem = ExternalID;

    SKIP_BLANKS;




    if ((ctxt->sax != ((void*)0)) && (ctxt->sax->internalSubset != ((void*)0)) &&
 (!ctxt->disableSAX))
 ctxt->sax->internalSubset(ctxt->userData, name, ExternalID, URI);
    if (ctxt->instate == XML_PARSER_EOF)
 return;





    if (RAW == '[')
 return;




    if (RAW != '>') {
 xmlFatalErr(ctxt, XML_ERR_DOCTYPE_NOT_FINISHED, ((void*)0));
    }
    NEXT;
}
