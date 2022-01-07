
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct call_sequence {int size; size_t count; TYPE_1__* sequence; } ;
struct call_entry {int attributes; int attr_count; int ret; int arg3W; int arg2W; int arg1W; int column; int line; int id; } ;
struct TYPE_5__ {int attributes; int attr_count; int ret; int arg3W; int arg2W; int arg1W; int column; int line; int id; } ;


 int assert (TYPE_1__*) ;
 TYPE_1__* heap_alloc (int) ;
 TYPE_1__* heap_realloc (TYPE_1__*,int) ;

__attribute__((used)) static void add_call(struct call_sequence **seq, int sequence_index,
    const struct call_entry *call)
{
    struct call_sequence *call_seq = seq[sequence_index];

    if (!call_seq->sequence)
    {
        call_seq->size = 10;
        call_seq->sequence = heap_alloc(call_seq->size * sizeof (struct call_entry));
    }

    if (call_seq->count == call_seq->size)
    {
        call_seq->size *= 2;
        call_seq->sequence = heap_realloc(call_seq->sequence, call_seq->size * sizeof (struct call_entry));
    }

    assert(call_seq->sequence);

    call_seq->sequence[call_seq->count].id = call->id;
    call_seq->sequence[call_seq->count].line = call->line;
    call_seq->sequence[call_seq->count].column = call->column;
    call_seq->sequence[call_seq->count].arg1W = call->arg1W;
    call_seq->sequence[call_seq->count].arg2W = call->arg2W;
    call_seq->sequence[call_seq->count].arg3W = call->arg3W;
    call_seq->sequence[call_seq->count].ret = call->ret;
    call_seq->sequence[call_seq->count].attr_count = call->attr_count;
    call_seq->sequence[call_seq->count].attributes = call->attributes;

    call_seq->count++;
}
