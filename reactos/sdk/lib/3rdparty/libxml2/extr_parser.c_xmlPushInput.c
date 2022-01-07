
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* xmlParserInputPtr ;
typedef TYPE_3__* xmlParserCtxtPtr ;
struct TYPE_12__ {int inputNr; int options; scalar_t__ instate; TYPE_1__* input; } ;
struct TYPE_11__ {int cur; } ;
struct TYPE_10__ {int filename; int line; } ;


 int GROW ;
 int XML_ERR_ENTITY_LOOP ;
 scalar_t__ XML_PARSER_EOF ;
 int XML_PARSE_HUGE ;
 int inputPop (TYPE_3__*) ;
 int inputPush (TYPE_3__*,TYPE_2__*) ;
 int xmlFatalErr (TYPE_3__*,int ,int *) ;
 int xmlFreeInputStream (int ) ;
 int xmlGenericError (int ,char*,int,int ) ;
 int xmlGenericErrorContext ;
 scalar_t__ xmlParserDebugEntities ;

int
xmlPushInput(xmlParserCtxtPtr ctxt, xmlParserInputPtr input) {
    int ret;
    if (input == ((void*)0)) return(-1);

    if (xmlParserDebugEntities) {
 if ((ctxt->input != ((void*)0)) && (ctxt->input->filename))
     xmlGenericError(xmlGenericErrorContext,
      "%s(%d): ", ctxt->input->filename,
      ctxt->input->line);
 xmlGenericError(xmlGenericErrorContext,
  "Pushing input %d : %.30s\n", ctxt->inputNr+1, input->cur);
    }
    if (((ctxt->inputNr > 40) && ((ctxt->options & XML_PARSE_HUGE) == 0)) ||
        (ctxt->inputNr > 1024)) {
        xmlFatalErr(ctxt, XML_ERR_ENTITY_LOOP, ((void*)0));
        while (ctxt->inputNr > 1)
            xmlFreeInputStream(inputPop(ctxt));
 return(-1);
    }
    ret = inputPush(ctxt, input);
    if (ctxt->instate == XML_PARSER_EOF)
        return(-1);
    GROW;
    return(ret);
}
