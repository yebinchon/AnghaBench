
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct background_worker_config {int (* pf_start ) (void*,void*,void**) ;int pf_hold; int pf_release; int pf_stop; int pf_probe; int max_threads; int default_timeout; } ;
struct background_worker {int dummy; } ;
struct TYPE_4__ {int owner; } ;
typedef TYPE_1__ input_fetcher_t ;


 int CloseWorker ;
 int ProbeWorker ;
 int RequestHold ;
 int RequestRelease ;
 struct background_worker* background_worker_New (TYPE_1__*,struct background_worker_config*) ;
 int var_InheritInteger (int ,char*) ;

__attribute__((used)) static void WorkerInit( input_fetcher_t* fetcher,
    struct background_worker** worker, int( *starter )( void*, void*, void** ) )
{
    struct background_worker_config conf = {
        .default_timeout = 0,
        .max_threads = var_InheritInteger( fetcher->owner, "fetch-art-threads" ),
        .pf_start = starter,
        .pf_probe = ProbeWorker,
        .pf_stop = CloseWorker,
        .pf_release = RequestRelease,
        .pf_hold = RequestHold };

    *worker = background_worker_New( fetcher, &conf );
}
