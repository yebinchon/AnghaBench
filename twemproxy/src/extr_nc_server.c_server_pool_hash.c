
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct server_pool {scalar_t__ (* key_hash ) (char*,scalar_t__) ;int server; } ;


 int ASSERT (int) ;
 int array_n (int *) ;
 scalar_t__ stub1 (char*,scalar_t__) ;

__attribute__((used)) static uint32_t
server_pool_hash(struct server_pool *pool, uint8_t *key, uint32_t keylen)
{
    ASSERT(array_n(&pool->server) != 0);
    ASSERT(key != ((void*)0));

    if (array_n(&pool->server) == 1) {
        return 0;
    }

    if (keylen == 0) {
        return 0;
    }

    return pool->key_hash((char *)key, keylen);
}
