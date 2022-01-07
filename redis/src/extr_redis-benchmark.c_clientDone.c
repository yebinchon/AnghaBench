
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int client ;
struct TYPE_2__ {int requests; int liveclients_mutex; scalar_t__ num_threads; int liveclients; scalar_t__ keepalive; scalar_t__ el; int requests_finished; } ;


 int aeStop (scalar_t__) ;
 int atomicGet (int ,int) ;
 TYPE_1__ config ;
 int createMissingClients (int ) ;
 int freeClient (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int resetClient (int ) ;

__attribute__((used)) static void clientDone(client c) {
    int requests_finished = 0;
    atomicGet(config.requests_finished, requests_finished);
    if (requests_finished >= config.requests) {
        freeClient(c);
        if (!config.num_threads && config.el) aeStop(config.el);
        return;
    }
    if (config.keepalive) {
        resetClient(c);
    } else {
        if (config.num_threads) pthread_mutex_lock(&(config.liveclients_mutex));
        config.liveclients--;
        createMissingClients(c);
        config.liveclients++;
        if (config.num_threads)
            pthread_mutex_unlock(&(config.liveclients_mutex));
        freeClient(c);
    }
}
