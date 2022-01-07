
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_10__ {scalar_t__ type; char* str; } ;
typedef TYPE_2__ redisReply ;
typedef TYPE_3__* client ;
typedef int aeEventLoop ;
struct TYPE_13__ {int requests; scalar_t__* latency; int requests_finished; scalar_t__ showerrors; } ;
struct TYPE_12__ {char* errstr; } ;
struct TYPE_11__ {scalar_t__ latency; scalar_t__ start; scalar_t__ pending; scalar_t__ prefix_pending; scalar_t__ prefixlen; size_t randlen; int * randptr; int obuf; TYPE_1__* cluster_node; scalar_t__ staglen; TYPE_4__* context; } ;
struct TYPE_9__ {char* ip; int port; } ;


 scalar_t__ REDIS_OK ;
 scalar_t__ REDIS_REPLY_ERROR ;
 int UNUSED (int) ;
 int atomicGetIncr (int ,int,int) ;
 int clientDone (TYPE_3__*) ;
 TYPE_7__ config ;
 int exit (int) ;
 int fetchClusterSlotsConfiguration (TYPE_3__*) ;
 int fprintf (int ,char*,...) ;
 int freeReplyObject (void*) ;
 int printf (char*,char*,...) ;
 scalar_t__ redisBufferRead (TYPE_4__*) ;
 scalar_t__ redisGetReply (TYPE_4__*,void**) ;
 int sdsrange (int ,scalar_t__,int) ;
 int sleep (int) ;
 int stderr ;
 int strncmp (char*,char*,int) ;
 scalar_t__ time (int *) ;
 scalar_t__ ustime () ;

__attribute__((used)) static void readHandler(aeEventLoop *el, int fd, void *privdata, int mask) {
    client c = privdata;
    void *reply = ((void*)0);
    UNUSED(el);
    UNUSED(fd);
    UNUSED(mask);




    if (c->latency < 0) c->latency = ustime()-(c->start);

    if (redisBufferRead(c->context) != REDIS_OK) {
        fprintf(stderr,"Error: %s\n",c->context->errstr);
        exit(1);
    } else {
        while(c->pending) {
            if (redisGetReply(c->context,&reply) != REDIS_OK) {
                fprintf(stderr,"Error: %s\n",c->context->errstr);
                exit(1);
            }
            if (reply != ((void*)0)) {
                if (reply == (void*)REDIS_REPLY_ERROR) {
                    fprintf(stderr,"Unexpected error reply, exiting...\n");
                    exit(1);
                }
                redisReply *r = reply;
                int is_err = (r->type == REDIS_REPLY_ERROR);

                if (is_err && config.showerrors) {

                    static time_t lasterr_time = 0;
                    time_t now = time(((void*)0));
                    if (lasterr_time != now) {
                        lasterr_time = now;
                        if (c->cluster_node) {
                            printf("Error from server %s:%d: %s\n",
                                   c->cluster_node->ip,
                                   c->cluster_node->port,
                                   r->str);
                        } else printf("Error from server: %s\n", r->str);
                    }
                }




                if (is_err && c->cluster_node && c->staglen) {
                    int fetch_slots = 0, do_wait = 0;
                    if (!strncmp(r->str,"MOVED",5) || !strncmp(r->str,"ASK",3))
                        fetch_slots = 1;
                    else if (!strncmp(r->str,"CLUSTERDOWN",11)) {



                        fetch_slots = 1;
                        do_wait = 1;
                        printf("Error from server %s:%d: %s\n",
                               c->cluster_node->ip,
                               c->cluster_node->port,
                               r->str);
                    }
                    if (do_wait) sleep(1);
                    if (fetch_slots && !fetchClusterSlotsConfiguration(c))
                        exit(1);
                }

                freeReplyObject(reply);

                if (c->prefix_pending > 0) {
                    c->prefix_pending--;
                    c->pending--;

                    if (c->prefixlen > 0) {
                        size_t j;
                        sdsrange(c->obuf, c->prefixlen, -1);


                        for (j = 0; j < c->randlen; j++)
                            c->randptr[j] -= c->prefixlen;
                        c->prefixlen = 0;
                    }
                    continue;
                }
                int requests_finished = 0;
                atomicGetIncr(config.requests_finished, requests_finished, 1);
                if (requests_finished < config.requests)
                    config.latency[requests_finished] = c->latency;
                c->pending--;
                if (c->pending == 0) {
                    clientDone(c);
                    break;
                }
            } else {
                break;
            }
        }
    }
}
