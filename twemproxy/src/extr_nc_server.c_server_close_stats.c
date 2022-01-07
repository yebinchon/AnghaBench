
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server {int dummy; } ;
struct context {int dummy; } ;
typedef int err_t ;
 int server_connections ;
 int server_eof ;
 int server_err ;
 int server_timedout ;
 int stats_server_decr (struct context*,struct server*,int ) ;
 int stats_server_incr (struct context*,struct server*,int ) ;

__attribute__((used)) static void
server_close_stats(struct context *ctx, struct server *server, err_t err,
                   unsigned eof, unsigned connected)
{
    if (connected) {
        stats_server_decr(ctx, server, server_connections);
    }

    if (eof) {
        stats_server_incr(ctx, server, server_eof);
        return;
    }

    switch (err) {
    case 128:
        stats_server_incr(ctx, server, server_timedout);
        break;
    case 129:
    case 135:
    case 137:
    case 136:
    case 130:
    case 132:
    case 131:
    case 134:
    case 133:
    default:
        stats_server_incr(ctx, server, server_err);
        break;
    }
}
