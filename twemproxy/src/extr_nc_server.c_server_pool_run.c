
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_pool {int dist_type; int server; } ;
typedef int rstatus_t ;


 int ASSERT (int) ;



 int NC_ERROR ;
 int NC_OK ;
 int NOT_REACHED () ;
 scalar_t__ array_n (int *) ;
 int ketama_update (struct server_pool*) ;
 int modula_update (struct server_pool*) ;
 int random_update (struct server_pool*) ;

rstatus_t
server_pool_run(struct server_pool *pool)
{
    ASSERT(array_n(&pool->server) != 0);

    switch (pool->dist_type) {
    case 130:
        return ketama_update(pool);

    case 129:
        return modula_update(pool);

    case 128:
        return random_update(pool);

    default:
        NOT_REACHED();
        return NC_ERROR;
    }

    return NC_OK;
}
