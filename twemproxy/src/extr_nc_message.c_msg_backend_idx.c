
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct server_pool {int dummy; } ;
struct msg {struct conn* owner; } ;
struct conn {struct server_pool* owner; } ;


 int server_pool_idx (struct server_pool*,int *,int ) ;

uint32_t
msg_backend_idx(struct msg *msg, uint8_t *key, uint32_t keylen)
{
    struct conn *conn = msg->owner;
    struct server_pool *pool = conn->owner;

    return server_pool_idx(pool, key, keylen);
}
