
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int dummy; } ;
struct conn {int err; int redis; int proxy; int client; } ;


 int ASSERT (int) ;
 int errno ;
 struct msg* msg_get (struct conn*,int,int ) ;

struct msg *
rsp_get(struct conn *conn)
{
    struct msg *msg;

    ASSERT(!conn->client && !conn->proxy);

    msg = msg_get(conn, 0, conn->redis);
    if (msg == ((void*)0)) {
        conn->err = errno;
    }

    return msg;
}
