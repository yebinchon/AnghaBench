
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct call_sequence {int count; int size; TYPE_1__* sequence; } ;
struct TYPE_2__ {int attr_count; int arg3W; int arg2W; int arg1W; struct TYPE_2__* attributes; int valueW; int qnameW; int localW; int uriW; } ;


 int SysFreeString (int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static inline void flush_sequence(struct call_sequence **seg, int sequence_index)
{
    int i;

    struct call_sequence *call_seq = seg[sequence_index];

    for (i = 0; i < call_seq->count; i++)
    {
        int j;

        for (j = 0; j < call_seq->sequence[i].attr_count; j++)
        {
            SysFreeString(call_seq->sequence[i].attributes[j].uriW);
            SysFreeString(call_seq->sequence[i].attributes[j].localW);
            SysFreeString(call_seq->sequence[i].attributes[j].qnameW);
            SysFreeString(call_seq->sequence[i].attributes[j].valueW);
        }
        heap_free(call_seq->sequence[i].attributes);
        call_seq->sequence[i].attr_count = 0;

        SysFreeString(call_seq->sequence[i].arg1W);
        SysFreeString(call_seq->sequence[i].arg2W);
        SysFreeString(call_seq->sequence[i].arg3W);
    }

    heap_free(call_seq->sequence);
    call_seq->sequence = ((void*)0);
    call_seq->count = call_seq->size = 0;
}
