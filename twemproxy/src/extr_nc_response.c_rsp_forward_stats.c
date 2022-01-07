
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct server {int dummy; } ;
struct msg {int request; } ;
struct context {int dummy; } ;


 int ASSERT (int) ;
 int response_bytes ;
 int responses ;
 int stats_server_incr (struct context*,struct server*,int ) ;
 int stats_server_incr_by (struct context*,struct server*,int ,int ) ;

__attribute__((used)) static void
rsp_forward_stats(struct context *ctx, struct server *server, struct msg *msg, uint32_t msgsize)
{
    ASSERT(!msg->request);

    stats_server_incr(ctx, server, responses);
    stats_server_incr_by(ctx, server, response_bytes, msgsize);
}
