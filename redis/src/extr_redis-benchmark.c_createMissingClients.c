
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int client ;
struct TYPE_2__ {int liveclients; int numclients; int num_threads; } ;


 TYPE_1__ config ;
 int createClient (int *,int ,int ,int) ;
 int usleep (int) ;

__attribute__((used)) static void createMissingClients(client c) {
    int n = 0;
    while(config.liveclients < config.numclients) {
        int thread_id = -1;
        if (config.num_threads)
            thread_id = config.liveclients % config.num_threads;
        createClient(((void*)0),0,c,thread_id);


        if (++n > 64) {
            usleep(50000);
            n = 0;
        }
    }
}
