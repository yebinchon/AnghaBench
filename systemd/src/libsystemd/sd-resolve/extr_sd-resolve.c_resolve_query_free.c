
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int serv; int host; int addrinfo; int userdata; int (* destroy_callback ) (int ) ;} ;
typedef TYPE_1__ sd_resolve_query ;


 int assert (TYPE_1__*) ;
 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int resolve_freeaddrinfo (int ) ;
 int resolve_query_disconnect (TYPE_1__*) ;
 int stub1 (int ) ;

__attribute__((used)) static sd_resolve_query *resolve_query_free(sd_resolve_query *q) {
        assert(q);

        resolve_query_disconnect(q);

        if (q->destroy_callback)
                q->destroy_callback(q->userdata);

        resolve_freeaddrinfo(q->addrinfo);
        free(q->host);
        free(q->serv);

        return mfree(q);
}
