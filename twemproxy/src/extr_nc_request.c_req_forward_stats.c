
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server {int dummy; } ;
struct msg {int mlen; int request; } ;
struct context {int dummy; } ;


 int ASSERT (int ) ;
 int request_bytes ;
 int requests ;
 int stats_server_incr (struct context*,struct server*,int ) ;
 int stats_server_incr_by (struct context*,struct server*,int ,int ) ;

__attribute__((used)) static void
req_forward_stats(struct context *ctx, struct server *server, struct msg *msg)
{
    ASSERT(msg->request);

    stats_server_incr(ctx, server, requests);
    stats_server_incr_by(ctx, server, request_bytes, msg->mlen);
}
