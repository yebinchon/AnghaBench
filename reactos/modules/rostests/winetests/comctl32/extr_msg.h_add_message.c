
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_sequence {int size; size_t count; struct message* sequence; } ;
struct message {int dummy; } ;


 int assert (struct message*) ;
 struct message* heap_alloc (int) ;
 struct message* heap_realloc (struct message*,int) ;

__attribute__((used)) static void add_message(struct msg_sequence **seq, int sequence_index,
    const struct message *msg)
{
    struct msg_sequence *msg_seq = seq[sequence_index];

    if (!msg_seq->sequence)
    {
        msg_seq->size = 10;
        msg_seq->sequence = heap_alloc(msg_seq->size * sizeof (*msg_seq->sequence));
    }

    if (msg_seq->count == msg_seq->size)
    {
        msg_seq->size *= 2;
        msg_seq->sequence = heap_realloc(msg_seq->sequence, msg_seq->size * sizeof (*msg_seq->sequence));
    }

    assert(msg_seq->sequence);

    msg_seq->sequence[msg_seq->count] = *msg;
    msg_seq->count++;
}
