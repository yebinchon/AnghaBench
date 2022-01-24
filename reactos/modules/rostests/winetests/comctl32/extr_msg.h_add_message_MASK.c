#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct msg_sequence {int size; size_t count; struct message* sequence; } ;
struct message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct message*) ; 
 struct message* FUNC1 (int) ; 
 struct message* FUNC2 (struct message*,int) ; 

__attribute__((used)) static void FUNC3(struct msg_sequence **seq, int sequence_index,
    const struct message *msg)
{
    struct msg_sequence *msg_seq = seq[sequence_index];

    if (!msg_seq->sequence)
    {
        msg_seq->size = 10;
        msg_seq->sequence = FUNC1(msg_seq->size * sizeof (*msg_seq->sequence));
    }

    if (msg_seq->count == msg_seq->size)
    {
        msg_seq->size *= 2;
        msg_seq->sequence = FUNC2(msg_seq->sequence, msg_seq->size * sizeof (*msg_seq->sequence));
    }

    FUNC0(msg_seq->sequence);

    msg_seq->sequence[msg_seq->count] = *msg;
    msg_seq->count++;
}