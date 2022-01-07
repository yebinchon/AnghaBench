
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_4__ {int options; int nsNr; int nsMax; int const** nsTab; } ;


 int XML_PARSE_NSCLEAN ;
 int xmlErrMemory (TYPE_1__*,int *) ;
 scalar_t__ xmlMalloc (int) ;
 scalar_t__ xmlRealloc (char*,int) ;

__attribute__((used)) static int
nsPush(xmlParserCtxtPtr ctxt, const xmlChar *prefix, const xmlChar *URL)
{
    if (ctxt->options & XML_PARSE_NSCLEAN) {
        int i;
 for (i = ctxt->nsNr - 2;i >= 0;i -= 2) {
     if (ctxt->nsTab[i] == prefix) {

         if (ctxt->nsTab[i + 1] == URL)
      return(-2);

  break;
     }
 }
    }
    if ((ctxt->nsMax == 0) || (ctxt->nsTab == ((void*)0))) {
 ctxt->nsMax = 10;
 ctxt->nsNr = 0;
 ctxt->nsTab = (const xmlChar **)
               xmlMalloc(ctxt->nsMax * sizeof(xmlChar *));
 if (ctxt->nsTab == ((void*)0)) {
     xmlErrMemory(ctxt, ((void*)0));
     ctxt->nsMax = 0;
            return (-1);
 }
    } else if (ctxt->nsNr >= ctxt->nsMax) {
        const xmlChar ** tmp;
        ctxt->nsMax *= 2;
        tmp = (const xmlChar **) xmlRealloc((char *) ctxt->nsTab,
        ctxt->nsMax * sizeof(ctxt->nsTab[0]));
        if (tmp == ((void*)0)) {
            xmlErrMemory(ctxt, ((void*)0));
     ctxt->nsMax /= 2;
            return (-1);
        }
 ctxt->nsTab = tmp;
    }
    ctxt->nsTab[ctxt->nsNr++] = prefix;
    ctxt->nsTab[ctxt->nsNr++] = URL;
    return (ctxt->nsNr);
}
