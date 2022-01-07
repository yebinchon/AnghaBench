
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserNodeInfoSeqPtr ;
struct TYPE_4__ {int * buffer; } ;


 int xmlFree (int *) ;
 int xmlInitNodeInfoSeq (TYPE_1__*) ;

void
xmlClearNodeInfoSeq(xmlParserNodeInfoSeqPtr seq)
{
    if (seq == ((void*)0))
        return;
    if (seq->buffer != ((void*)0))
        xmlFree(seq->buffer);
    xmlInitNodeInfoSeq(seq);
}
