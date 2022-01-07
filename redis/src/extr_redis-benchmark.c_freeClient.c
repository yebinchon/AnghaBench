
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int listNode ;
typedef TYPE_1__* client ;
typedef int aeEventLoop ;
struct TYPE_10__ {int requests; int liveclients_mutex; scalar_t__ num_threads; int clients; int liveclients; int requests_finished; } ;
struct TYPE_9__ {int fd; } ;
struct TYPE_8__ {scalar_t__ thread_id; struct TYPE_8__* stagptr; struct TYPE_8__* randptr; int obuf; TYPE_3__* context; } ;


 int AE_READABLE ;
 int AE_WRITABLE ;
 int * CLIENT_GET_EVENTLOOP (TYPE_1__*) ;
 int aeDeleteFileEvent (int *,int ,int ) ;
 int aeStop (int *) ;
 int assert (int ) ;
 int atomicGet (int ,int) ;
 TYPE_6__ config ;
 int listDelNode (int ,int *) ;
 int * listSearchKey (int ,TYPE_1__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int redisFree (TYPE_3__*) ;
 int sdsfree (int ) ;
 int zfree (TYPE_1__*) ;

__attribute__((used)) static void freeClient(client c) {
    aeEventLoop *el = CLIENT_GET_EVENTLOOP(c);
    listNode *ln;
    aeDeleteFileEvent(el,c->context->fd,AE_WRITABLE);
    aeDeleteFileEvent(el,c->context->fd,AE_READABLE);
    if (c->thread_id >= 0) {
        int requests_finished = 0;
        atomicGet(config.requests_finished, requests_finished);
        if (requests_finished >= config.requests) {
            aeStop(el);
        }
    }
    redisFree(c->context);
    sdsfree(c->obuf);
    zfree(c->randptr);
    zfree(c->stagptr);
    zfree(c);
    if (config.num_threads) pthread_mutex_lock(&(config.liveclients_mutex));
    config.liveclients--;
    ln = listSearchKey(config.clients,c);
    assert(ln != ((void*)0));
    listDelNode(config.clients,ln);
    if (config.num_threads) pthread_mutex_unlock(&(config.liveclients_mutex));
}
