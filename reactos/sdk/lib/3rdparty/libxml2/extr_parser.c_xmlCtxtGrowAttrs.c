
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_4__ {int* attallocs; int maxatts; int const** atts; } ;


 int xmlErrMemory (TYPE_1__*,int *) ;
 scalar_t__ xmlMalloc (int) ;
 scalar_t__ xmlRealloc (void*,int) ;

__attribute__((used)) static int
xmlCtxtGrowAttrs(xmlParserCtxtPtr ctxt, int nr) {
    const xmlChar **atts;
    int *attallocs;
    int maxatts;

    if (ctxt->atts == ((void*)0)) {
 maxatts = 55;
 atts = (const xmlChar **)
        xmlMalloc(maxatts * sizeof(xmlChar *));
 if (atts == ((void*)0)) goto mem_error;
 ctxt->atts = atts;
 attallocs = (int *) xmlMalloc((maxatts / 5) * sizeof(int));
 if (attallocs == ((void*)0)) goto mem_error;
 ctxt->attallocs = attallocs;
 ctxt->maxatts = maxatts;
    } else if (nr + 5 > ctxt->maxatts) {
 maxatts = (nr + 5) * 2;
 atts = (const xmlChar **) xmlRealloc((void *) ctxt->atts,
         maxatts * sizeof(const xmlChar *));
 if (atts == ((void*)0)) goto mem_error;
 ctxt->atts = atts;
 attallocs = (int *) xmlRealloc((void *) ctxt->attallocs,
                              (maxatts / 5) * sizeof(int));
 if (attallocs == ((void*)0)) goto mem_error;
 ctxt->attallocs = attallocs;
 ctxt->maxatts = maxatts;
    }
    return(ctxt->maxatts);
mem_error:
    xmlErrMemory(ctxt, ((void*)0));
    return(-1);
}
