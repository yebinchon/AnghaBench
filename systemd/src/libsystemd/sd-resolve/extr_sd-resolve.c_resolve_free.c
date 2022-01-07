
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* floating; } ;
typedef TYPE_1__ sd_resolve_query ;
struct TYPE_14__ {int dead; scalar_t__* fds; unsigned int n_valid_workers; int * workers; int ** default_resolve_ptr; TYPE_1__* queries; } ;
typedef TYPE_2__ sd_resolve ;
struct TYPE_15__ {int length; int type; } ;
typedef TYPE_3__ RHeader ;


 int MSG_NOSIGNAL ;
 int PROTECT_ERRNO ;
 size_t REQUEST_SEND_FD ;
 int REQUEST_TERMINATE ;
 int _FD_MAX ;
 int assert (TYPE_2__*) ;
 int close_many (scalar_t__*,int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int pthread_join (int ,int *) ;
 int resolve_query_disconnect (TYPE_1__*) ;
 int sd_resolve_detach_event (TYPE_2__*) ;
 int sd_resolve_query_unref (TYPE_1__*) ;
 int send (scalar_t__,TYPE_3__*,int,int ) ;

__attribute__((used)) static sd_resolve *resolve_free(sd_resolve *resolve) {
        PROTECT_ERRNO;
        sd_resolve_query *q;
        unsigned i;

        assert(resolve);

        while ((q = resolve->queries)) {
                assert(q->floating);
                resolve_query_disconnect(q);
                sd_resolve_query_unref(q);
        }

        if (resolve->default_resolve_ptr)
                *(resolve->default_resolve_ptr) = ((void*)0);

        resolve->dead = 1;

        sd_resolve_detach_event(resolve);

        if (resolve->fds[REQUEST_SEND_FD] >= 0) {

                RHeader req = {
                        .type = REQUEST_TERMINATE,
                        .length = sizeof req,
                };


                for (i = 0; i < resolve->n_valid_workers; i++)
                        (void) send(resolve->fds[REQUEST_SEND_FD], &req, req.length, MSG_NOSIGNAL);
        }



        for (i = 0; i < resolve->n_valid_workers; i++)
                (void) pthread_join(resolve->workers[i], ((void*)0));


        close_many(resolve->fds, _FD_MAX);

        return mfree(resolve);
}
