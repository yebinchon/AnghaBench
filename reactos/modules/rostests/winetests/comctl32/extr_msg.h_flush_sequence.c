
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_sequence {scalar_t__ size; scalar_t__ count; int * sequence; } ;


 int heap_free (int *) ;

__attribute__((used)) static inline void flush_sequence(struct msg_sequence **seg, int sequence_index)
{
    struct msg_sequence *msg_seq = seg[sequence_index];
    heap_free(msg_seq->sequence);
    msg_seq->sequence = ((void*)0);
    msg_seq->count = msg_seq->size = 0;
}
