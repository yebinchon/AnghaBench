
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct server_pool {int dist_type; int server; } ;
struct TYPE_2__ {int data; int len; } ;
struct server {TYPE_1__ pname; } ;


 int LOG_VERB ;
 struct server* array_get (int *,int ) ;
 int log_debug (int ,char*,int ,int *,int ,int ,int ) ;
 int server_pool_idx (struct server_pool*,int *,int ) ;

__attribute__((used)) static struct server *
server_pool_server(struct server_pool *pool, uint8_t *key, uint32_t keylen)
{
    struct server *server;
    uint32_t idx;

    idx = server_pool_idx(pool, key, keylen);
    server = array_get(&pool->server, idx);

    log_debug(LOG_VERB, "key '%.*s' on dist %d maps to server '%.*s'", keylen,
              key, pool->dist_type, server->pname.len, server->pname.data);

    return server;
}
