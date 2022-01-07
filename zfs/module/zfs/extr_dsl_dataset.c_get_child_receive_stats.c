
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int recvname ;
struct TYPE_9__ {TYPE_1__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_8__ {int dd_pool; } ;


 int FTAG ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 scalar_t__ dsl_dataset_hold (int ,char*,int ,TYPE_2__**) ;
 int dsl_dataset_name (TYPE_2__*,char*) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 char* get_receive_resume_stats_impl (TYPE_2__*) ;
 char* kmem_strdup (char*) ;
 char* recv_clone_name ;
 int strlcat (char*,char*,int) ;

char *
get_child_receive_stats(dsl_dataset_t *ds)
{
 char recvname[ZFS_MAX_DATASET_NAME_LEN + 6];
 dsl_dataset_t *recv_ds;
 dsl_dataset_name(ds, recvname);
 if (strlcat(recvname, "/", sizeof (recvname)) <
     sizeof (recvname) &&
     strlcat(recvname, recv_clone_name, sizeof (recvname)) <
     sizeof (recvname) &&
     dsl_dataset_hold(ds->ds_dir->dd_pool, recvname, FTAG,
     &recv_ds) == 0) {
  char *propval = get_receive_resume_stats_impl(recv_ds);
  dsl_dataset_rele(recv_ds, FTAG);
  return (propval);
 }
 return (kmem_strdup(""));
}
