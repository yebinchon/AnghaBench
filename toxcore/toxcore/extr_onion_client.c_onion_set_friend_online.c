
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ num_friends; TYPE_1__* friends_list; } ;
struct TYPE_4__ {int is_online; scalar_t__ run_count; scalar_t__ last_noreplay; int last_seen; } ;
typedef TYPE_2__ Onion_Client ;


 int unix_time () ;

int onion_set_friend_online(Onion_Client *onion_c, int friend_num, uint8_t is_online)
{
    if ((uint32_t)friend_num >= onion_c->num_friends)
        return -1;

    if (is_online == 0 && onion_c->friends_list[friend_num].is_online == 1)
        onion_c->friends_list[friend_num].last_seen = unix_time();

    onion_c->friends_list[friend_num].is_online = is_online;


    if (!is_online) {
        onion_c->friends_list[friend_num].last_noreplay = 0;
        onion_c->friends_list[friend_num].run_count = 0;
    }

    return 0;
}
