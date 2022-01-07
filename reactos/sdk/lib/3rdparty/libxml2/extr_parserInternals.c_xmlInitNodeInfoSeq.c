
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlParserNodeInfoSeqPtr ;
struct TYPE_3__ {int * buffer; scalar_t__ maximum; scalar_t__ length; } ;



void
xmlInitNodeInfoSeq(xmlParserNodeInfoSeqPtr seq)
{
    if (seq == ((void*)0))
        return;
    seq->length = 0;
    seq->maximum = 0;
    seq->buffer = ((void*)0);
}
