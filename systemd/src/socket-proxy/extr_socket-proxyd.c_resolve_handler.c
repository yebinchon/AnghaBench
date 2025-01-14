
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct addrinfo {int ai_addrlen; int ai_addr; } ;
struct TYPE_8__ {int resolve_query; } ;
typedef TYPE_1__ sd_resolve_query ;
typedef TYPE_1__ Connection ;


 int assert (TYPE_1__*) ;
 int connection_free (TYPE_1__*) ;
 int connection_start (TYPE_1__*,int ,int ) ;
 int gai_strerror (int) ;
 int log_error (char*,int ) ;
 int sd_resolve_query_unref (int ) ;

__attribute__((used)) static int resolve_handler(sd_resolve_query *q, int ret, const struct addrinfo *ai, Connection *c) {
        assert(q);
        assert(c);

        if (ret != 0) {
                log_error("Failed to resolve host: %s", gai_strerror(ret));
                goto fail;
        }

        c->resolve_query = sd_resolve_query_unref(c->resolve_query);

        return connection_start(c, ai->ai_addr, ai->ai_addrlen);

fail:
        connection_free(c);
        return 0;
}
