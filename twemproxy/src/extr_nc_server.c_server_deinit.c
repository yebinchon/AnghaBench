
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct server {scalar_t__ ns_conn_q; int s_conn_q; } ;
struct array {int dummy; } ;


 int ASSERT (int) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int array_deinit (struct array*) ;
 scalar_t__ array_n (struct array*) ;
 struct server* array_pop (struct array*) ;

void
server_deinit(struct array *server)
{
    uint32_t i, nserver;

    for (i = 0, nserver = array_n(server); i < nserver; i++) {
        struct server *s;

        s = array_pop(server);
        ASSERT(TAILQ_EMPTY(&s->s_conn_q) && s->ns_conn_q == 0);
    }
    array_deinit(server);
}
