
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_6__ {TYPE_1__* friendlist; } ;
struct TYPE_5__ {scalar_t__ status; } ;
typedef TYPE_2__ Messenger ;


 int FRIEND_CONFIRMED ;
 scalar_t__ FRIEND_ONLINE ;
 int send_online_packet (TYPE_2__*,int) ;
 int set_friend_status (TYPE_2__*,int,int ) ;

__attribute__((used)) static int handle_status(void *object, int i, uint8_t status)
{
    Messenger *m = object;

    if (status) {
        send_online_packet(m, i);
    } else {
        if (m->friendlist[i].status == FRIEND_ONLINE) {
            set_friend_status(m, i, FRIEND_CONFIRMED);
        }
    }

    return 0;
}
