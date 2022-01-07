
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct msg_sequence {int size; size_t count; TYPE_1__* sequence; } ;
struct message {int id; int lParam; int wParam; int flags; int message; } ;
struct TYPE_5__ {int id; int lParam; int wParam; int flags; int message; } ;


 int assert (TYPE_1__*) ;
 TYPE_1__* heap_alloc (int) ;
 TYPE_1__* heap_realloc (TYPE_1__*,int) ;

__attribute__((used)) static void add_message(struct msg_sequence **seq, int sequence_index,
    const struct message *msg)
{
    struct msg_sequence *msg_seq = seq[sequence_index];

    if (!msg_seq->sequence)
    {
        msg_seq->size = 10;
        msg_seq->sequence = heap_alloc(msg_seq->size * sizeof (struct message));
    }

    if (msg_seq->count == msg_seq->size)
    {
        msg_seq->size *= 2;
        msg_seq->sequence = heap_realloc(msg_seq->sequence, msg_seq->size * sizeof (struct message));
    }

    assert(msg_seq->sequence);

    msg_seq->sequence[msg_seq->count].message = msg->message;
    msg_seq->sequence[msg_seq->count].flags = msg->flags;
    msg_seq->sequence[msg_seq->count].wParam = msg->wParam;
    msg_seq->sequence[msg_seq->count].lParam = msg->lParam;
    msg_seq->sequence[msg_seq->count].id = msg->id;

    msg_seq->count++;
}
