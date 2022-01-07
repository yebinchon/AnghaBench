
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_3__ {int nsNr; int ** nsTab; } ;


 int xmlGenericError (int ,char*,int) ;
 int xmlGenericErrorContext ;

__attribute__((used)) static int
nsPop(xmlParserCtxtPtr ctxt, int nr)
{
    int i;

    if (ctxt->nsTab == ((void*)0)) return(0);
    if (ctxt->nsNr < nr) {
        xmlGenericError(xmlGenericErrorContext, "Pbm popping %d NS\n", nr);
        nr = ctxt->nsNr;
    }
    if (ctxt->nsNr <= 0)
        return (0);

    for (i = 0;i < nr;i++) {
         ctxt->nsNr--;
  ctxt->nsTab[ctxt->nsNr] = ((void*)0);
    }
    return(nr);
}
