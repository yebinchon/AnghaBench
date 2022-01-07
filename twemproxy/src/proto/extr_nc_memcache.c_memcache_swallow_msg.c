
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int dummy; } ;
struct conn {int dummy; } ;



void
memcache_swallow_msg(struct conn *conn, struct msg *pmsg, struct msg *msg)
{
}
