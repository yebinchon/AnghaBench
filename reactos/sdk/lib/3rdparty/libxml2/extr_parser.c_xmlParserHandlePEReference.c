
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_5__ {int instate; int inputNr; int external; } ;


 int IS_BLANK_CH (int ) ;
 int NXT (int) ;
 int XML_ERR_PEREF_AT_EOF ;
 int XML_ERR_PEREF_IN_EPILOG ;
 int XML_ERR_PEREF_IN_PROLOG ;
 int xmlFatalErr (TYPE_1__*,int ,int *) ;
 int xmlParsePEReference (TYPE_1__*) ;

void
xmlParserHandlePEReference(xmlParserCtxtPtr ctxt) {
    switch(ctxt->instate) {
 case 144:
     return;
        case 143:
     return;
 case 129:
     return;
 case 140:
     return;
        case 137:
     xmlFatalErr(ctxt, XML_ERR_PEREF_AT_EOF, ((void*)0));
     return;
        case 132:
 case 130:
 case 134:
     xmlFatalErr(ctxt, XML_ERR_PEREF_IN_PROLOG, ((void*)0));
     return;
 case 139:
        case 142:
        case 145:
        case 133:
 case 128:
 case 131:

     return;
        case 136:
     xmlFatalErr(ctxt, XML_ERR_PEREF_IN_EPILOG, ((void*)0));
     return;
 case 138:







     return;
        case 141:







     if ((ctxt->external == 0) && (ctxt->inputNr == 1))
  return;
     if (IS_BLANK_CH(NXT(1)) || NXT(1) == 0)
  return;
            break;
        case 135:
            return;
    }

    xmlParsePEReference(ctxt);
}
