
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int curl; scalar_t__ release; } ;
struct TYPE_8__ {scalar_t__ err_cnt; int lock; int queue; } ;
typedef TYPE_1__ ConnectionPool ;
typedef TYPE_2__ Connection ;


 scalar_t__ CLEAR_POOL_ERR_CNT ;
 int connection_free (TYPE_2__*) ;
 int connection_pool_clear (TYPE_1__*) ;
 int curl_easy_reset (int ) ;
 int g_queue_push_tail (int ,TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
connection_pool_return_connection (ConnectionPool *pool, Connection *conn)
{
    if (!conn)
        return;

    if (conn->release) {
        connection_free (conn);

        pthread_mutex_lock (&pool->lock);
        if (++pool->err_cnt >= CLEAR_POOL_ERR_CNT) {
            connection_pool_clear (pool);
        }
        pthread_mutex_unlock (&pool->lock);

        return;
    }

    curl_easy_reset (conn->curl);


    pthread_mutex_lock (&pool->lock);
    pool->err_cnt = 0;
    g_queue_push_tail (pool->queue, conn);
    pthread_mutex_unlock (&pool->lock);
}
