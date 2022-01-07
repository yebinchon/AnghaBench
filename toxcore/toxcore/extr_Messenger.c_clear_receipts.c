
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct Receipts {struct Receipts* next; } ;
typedef size_t int32_t ;
struct TYPE_6__ {TYPE_1__* friendlist; } ;
struct TYPE_5__ {int * receipts_end; struct Receipts* receipts_start; } ;
typedef TYPE_2__ Messenger ;


 int free (struct Receipts*) ;
 scalar_t__ friend_not_valid (TYPE_2__*,size_t) ;

__attribute__((used)) static int clear_receipts(Messenger *m, int32_t friendnumber)
{
    if (friend_not_valid(m, friendnumber))
        return -1;

    struct Receipts *receipts = m->friendlist[friendnumber].receipts_start;

    while (receipts) {
        struct Receipts *temp_r = receipts->next;
        free(receipts);
        receipts = temp_r;
    }

    m->friendlist[friendnumber].receipts_start = ((void*)0);
    m->friendlist[friendnumber].receipts_end = ((void*)0);
    return 0;
}
