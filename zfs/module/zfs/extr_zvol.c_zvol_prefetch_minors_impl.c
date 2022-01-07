
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int objset_t ;
struct TYPE_2__ {char* name; scalar_t__ error; } ;
typedef TYPE_1__ minors_job_t ;


 int B_TRUE ;
 int DMU_OST_ZVOL ;
 int FTAG ;
 int ZIO_PRIORITY_SYNC_READ ;
 int ZVOL_OBJ ;
 int dmu_objset_disown (int *,int ,int ) ;
 scalar_t__ dmu_objset_own (char*,int ,int ,int ,int ,int **) ;
 int dmu_prefetch (int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
zvol_prefetch_minors_impl(void *arg)
{
 minors_job_t *job = arg;
 char *dsname = job->name;
 objset_t *os = ((void*)0);

 job->error = dmu_objset_own(dsname, DMU_OST_ZVOL, B_TRUE, B_TRUE,
     FTAG, &os);
 if (job->error == 0) {
  dmu_prefetch(os, ZVOL_OBJ, 0, 0, 0, ZIO_PRIORITY_SYNC_READ);
  dmu_objset_disown(os, B_TRUE, FTAG);
 }
}
