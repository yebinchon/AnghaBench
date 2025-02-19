
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputPtr ;
typedef TYPE_2__* xmlParserCtxtPtr ;
typedef TYPE_3__* xmlEntityPtr ;
typedef TYPE_4__* xmlBufferPtr ;
struct TYPE_21__ {int * content; } ;
struct TYPE_20__ {scalar_t__ etype; int * content; int name; } ;
struct TYPE_19__ {scalar_t__ instate; TYPE_1__* input; } ;
struct TYPE_18__ {scalar_t__ cur; scalar_t__ end; } ;


 int CUR_CHAR (int) ;
 int GROW ;
 scalar_t__ IS_CHAR (int) ;
 int NEXTL (int) ;
 int XML_ERR_INTERNAL_ERROR ;
 int XML_ERR_INVALID_CHAR ;
 scalar_t__ XML_EXTERNAL_GENERAL_PARSED_ENTITY ;
 scalar_t__ XML_EXTERNAL_PARAMETER_ENTITY ;
 int XML_PARSER_CHUNK_SIZE ;
 scalar_t__ XML_PARSER_EOF ;
 int xmlBufferAdd (TYPE_4__*,scalar_t__,int) ;
 TYPE_4__* xmlBufferCreate () ;
 int xmlBufferFree (TYPE_4__*) ;
 int xmlFatalErr (TYPE_2__*,int ,char*) ;
 int xmlFatalErrMsgInt (TYPE_2__*,int ,char*,int) ;
 int xmlGenericError (int ,char*,int ) ;
 int xmlGenericErrorContext ;
 TYPE_1__* xmlNewEntityInputStream (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ xmlParserDebugEntities ;
 int xmlPopInput (TYPE_2__*) ;
 scalar_t__ xmlPushInput (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int
xmlLoadEntityContent(xmlParserCtxtPtr ctxt, xmlEntityPtr entity) {
    xmlParserInputPtr input;
    xmlBufferPtr buf;
    int l, c;
    int count = 0;

    if ((ctxt == ((void*)0)) || (entity == ((void*)0)) ||
        ((entity->etype != XML_EXTERNAL_PARAMETER_ENTITY) &&
  (entity->etype != XML_EXTERNAL_GENERAL_PARSED_ENTITY)) ||
 (entity->content != ((void*)0))) {
 xmlFatalErr(ctxt, XML_ERR_INTERNAL_ERROR,
             "xmlLoadEntityContent parameter error");
        return(-1);
    }

    if (xmlParserDebugEntities)
 xmlGenericError(xmlGenericErrorContext,
  "Reading %s entity content input\n", entity->name);

    buf = xmlBufferCreate();
    if (buf == ((void*)0)) {
 xmlFatalErr(ctxt, XML_ERR_INTERNAL_ERROR,
             "xmlLoadEntityContent parameter error");
        return(-1);
    }

    input = xmlNewEntityInputStream(ctxt, entity);
    if (input == ((void*)0)) {
 xmlFatalErr(ctxt, XML_ERR_INTERNAL_ERROR,
             "xmlLoadEntityContent input error");
 xmlBufferFree(buf);
        return(-1);
    }





    if (xmlPushInput(ctxt, input) < 0) {
        xmlBufferFree(buf);
 return(-1);
    }

    GROW;
    c = CUR_CHAR(l);
    while ((ctxt->input == input) && (ctxt->input->cur < ctxt->input->end) &&
           (IS_CHAR(c))) {
        xmlBufferAdd(buf, ctxt->input->cur, l);
 if (count++ > XML_PARSER_CHUNK_SIZE) {
     count = 0;
     GROW;
            if (ctxt->instate == XML_PARSER_EOF) {
                xmlBufferFree(buf);
                return(-1);
            }
 }
 NEXTL(l);
 c = CUR_CHAR(l);
 if (c == 0) {
     count = 0;
     GROW;
            if (ctxt->instate == XML_PARSER_EOF) {
                xmlBufferFree(buf);
                return(-1);
            }
     c = CUR_CHAR(l);
 }
    }

    if ((ctxt->input == input) && (ctxt->input->cur >= ctxt->input->end)) {
        xmlPopInput(ctxt);
    } else if (!IS_CHAR(c)) {
        xmlFatalErrMsgInt(ctxt, XML_ERR_INVALID_CHAR,
                          "xmlLoadEntityContent: invalid char value %d\n",
                   c);
 xmlBufferFree(buf);
 return(-1);
    }
    entity->content = buf->content;
    buf->content = ((void*)0);
    xmlBufferFree(buf);

    return(0);
}
