
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int thread_pool; } ;
typedef TYPE_1__ SeafJobManager ;


 int FALSE ;
 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_thread_pool_free (int ,int ,int ) ;

void
seaf_job_manager_free (SeafJobManager *mgr)
{
    g_thread_pool_free (mgr->thread_pool, TRUE, FALSE);
    g_free (mgr);
}
