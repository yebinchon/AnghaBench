
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int size; int sent; int data; struct TYPE_7__* next; } ;
struct TYPE_6__ {int * priority_queue_end; TYPE_2__* priority_queue_start; int sock; } ;
typedef TYPE_1__ TCP_Secure_Connection ;
typedef TYPE_2__ TCP_Priority_List ;


 int MSG_NOSIGNAL ;
 int free (TYPE_2__*) ;
 int send (int ,int,int,int ) ;
 int send_pending_data_nonpriority (TYPE_1__*) ;

__attribute__((used)) static int send_pending_data(TCP_Secure_Connection *con)
{

    if (send_pending_data_nonpriority(con) == -1) {
        return -1;
    }

    TCP_Priority_List *p = con->priority_queue_start;

    while (p) {
        uint16_t left = p->size - p->sent;
        int len = send(con->sock, p->data + p->sent, left, MSG_NOSIGNAL);

        if (len != left) {
            if (len > 0) {
                p->sent += len;
            }

            break;
        }

        TCP_Priority_List *pp = p;
        p = p->next;
        free(pp);
    }

    con->priority_queue_start = p;

    if (!p) {
        con->priority_queue_end = ((void*)0);
        return 0;
    }

    return -1;
}
