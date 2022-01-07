
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_4__ {int node_seq; } ;


 int xmlClearNodeInfoSeq (int *) ;
 int xmlCtxtReset (TYPE_1__*) ;

void
xmlClearParserCtxt(xmlParserCtxtPtr ctxt)
{
  if (ctxt==((void*)0))
    return;
  xmlClearNodeInfoSeq(&ctxt->node_seq);
  xmlCtxtReset(ctxt);
}
