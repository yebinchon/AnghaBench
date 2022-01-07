
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int exists; int value; } ;
struct TYPE_6__ {TYPE_1__ error; } ;
typedef int Messenger ;
typedef TYPE_2__ MSIMessage ;
typedef int MSIError ;


 int LOGGER_DEBUG (char*,int ,int ) ;
 int assert (int *) ;
 int msg_init (TYPE_2__*,int ) ;
 int requ_pop ;
 int send_message (int *,int ,TYPE_2__*) ;

int send_error (Messenger *m, uint32_t friend_number, MSIError error)
{

    assert(m);

    LOGGER_DEBUG("Sending error: %d to friend: %d", error, friend_number);

    MSIMessage msg;
    msg_init(&msg, requ_pop);

    msg.error.exists = 1;
    msg.error.value = error;

    send_message (m, friend_number, &msg);
    return 0;
}
