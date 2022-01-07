
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_worker_config {int dummy; } ;
struct background_worker {int dummy; } ;


 struct background_worker* background_worker_Create (void*,struct background_worker_config*) ;

struct background_worker* background_worker_New( void* owner,
    struct background_worker_config* conf )
{
    return background_worker_Create(owner, conf);
}
