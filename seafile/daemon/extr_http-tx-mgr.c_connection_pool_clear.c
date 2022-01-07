
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue; } ;
typedef TYPE_1__ ConnectionPool ;
typedef int Connection ;


 int connection_free (int *) ;
 int * g_queue_pop_head (int ) ;

__attribute__((used)) static void
connection_pool_clear (ConnectionPool *pool)
{
    Connection *conn = ((void*)0);

    while (1) {
        conn = g_queue_pop_head (pool->queue);
        if (!conn)
            break;
        connection_free (conn);
    }
}
