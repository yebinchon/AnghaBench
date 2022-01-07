
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ip; } ;
struct TYPE_8__ {int last_to_ping; TYPE_1__* to_ping; int dht; } ;
struct TYPE_7__ {TYPE_4__ ip_port; int public_key; } ;
typedef TYPE_2__ PING ;


 unsigned int MAX_TO_PING ;
 int TIME_TO_PING ;
 int ip_isset (int *) ;
 int ip_reset (int *) ;
 int is_timeout (int ,int ) ;
 int node_addable_to_close_list (int ,int ,TYPE_4__) ;
 int send_ping_request (TYPE_2__*,TYPE_4__,int ) ;
 int unix_time () ;

void do_to_ping(PING *ping)
{
    if (!is_timeout(ping->last_to_ping, TIME_TO_PING))
        return;

    if (!ip_isset(&ping->to_ping[0].ip_port.ip))
        return;

    unsigned int i;

    for (i = 0; i < MAX_TO_PING; ++i) {
        if (!ip_isset(&ping->to_ping[i].ip_port.ip))
            break;

        if (!node_addable_to_close_list(ping->dht, ping->to_ping[i].public_key, ping->to_ping[i].ip_port))
            continue;

        send_ping_request(ping, ping->to_ping[i].ip_port, ping->to_ping[i].public_key);
        ip_reset(&ping->to_ping[i].ip_port.ip);
    }

    if (i != 0)
        ping->last_to_ping = unix_time();
}
