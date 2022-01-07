
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pthread_t ;
typedef int pthread_attr_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int * lock_office_job_queue; } ;
typedef TYPE_2__ SeafRepoManager ;


 int PTHREAD_CREATE_DETACHED ;
 int cleanup_deleted_stores ;
 int lock_office_file_worker ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_create (int *,int *,int ,int *) ;
 int seaf_warning (char*,int ) ;
 int strerror (int) ;
 int watch_repos (TYPE_2__*) ;

int
seaf_repo_manager_start (SeafRepoManager *mgr)
{
    pthread_t tid;
    pthread_attr_t attr;
    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
    int rc;

    watch_repos (mgr);

    rc = pthread_create (&tid, &attr, cleanup_deleted_stores, ((void*)0));
    if (rc != 0) {
        seaf_warning ("Failed to start cleanup thread: %s\n", strerror(rc));
    }
    return 0;
}
