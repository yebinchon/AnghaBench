
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct Receipts {int msg_id; int packet_num; struct Receipts* next; } ;
typedef size_t int32_t ;
struct TYPE_8__ {TYPE_1__* friendlist; int read_receipt_userdata; int (* read_receipt ) (TYPE_2__*,size_t,int ,int ) ;} ;
struct TYPE_7__ {int * receipts_end; struct Receipts* receipts_start; } ;
typedef TYPE_2__ Messenger ;


 int free (struct Receipts*) ;
 scalar_t__ friend_not_valid (TYPE_2__*,size_t) ;
 int friend_received_packet (TYPE_2__*,size_t,int ) ;
 int stub1 (TYPE_2__*,size_t,int ,int ) ;

__attribute__((used)) static int do_receipts(Messenger *m, int32_t friendnumber)
{
    if (friend_not_valid(m, friendnumber))
        return -1;

    struct Receipts *receipts = m->friendlist[friendnumber].receipts_start;

    while (receipts) {
        struct Receipts *temp_r = receipts->next;

        if (friend_received_packet(m, friendnumber, receipts->packet_num) == -1)
            break;

        if (m->read_receipt)
            (*m->read_receipt)(m, friendnumber, receipts->msg_id, m->read_receipt_userdata);

        free(receipts);
        m->friendlist[friendnumber].receipts_start = temp_r;
        receipts = temp_r;
    }

    if (!m->friendlist[friendnumber].receipts_start)
        m->friendlist[friendnumber].receipts_end = ((void*)0);

    return 0;
}
