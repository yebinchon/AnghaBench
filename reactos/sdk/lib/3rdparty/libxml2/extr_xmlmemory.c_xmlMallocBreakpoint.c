
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlGenericError (int ,char*,int ) ;
 int xmlGenericErrorContext ;
 int xmlMemStopAtBlock ;

void
xmlMallocBreakpoint(void) {
    xmlGenericError(xmlGenericErrorContext,
     "xmlMallocBreakpoint reached on block %d\n", xmlMemStopAtBlock);
}
