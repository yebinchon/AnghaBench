
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_pool {int dummy; } ;
struct context {int dummy; } ;
typedef int err_t ;
 int client_connections ;
 int client_eof ;
 int client_err ;
 int stats_pool_decr (struct context*,struct server_pool*,int ) ;
 int stats_pool_incr (struct context*,struct server_pool*,int ) ;

__attribute__((used)) static void
client_close_stats(struct context *ctx, struct server_pool *pool, err_t err,
                   unsigned eof)
{
    stats_pool_decr(ctx, pool, client_connections);

    if (eof) {
        stats_pool_incr(ctx, pool, client_eof);
        return;
    }

    switch (err) {
    case 129:
    case 128:
    case 135:
    case 136:
    case 130:
    case 132:
    case 131:
    case 134:
    case 133:
    default:
        stats_pool_incr(ctx, pool, client_err);
        break;
    }
}
