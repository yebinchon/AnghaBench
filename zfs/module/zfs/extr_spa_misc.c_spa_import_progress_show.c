
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_longlong_t ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {char* pool_name; scalar_t__ spa_load_max_txg; scalar_t__ mmp_sec_remaining; scalar_t__ spa_load_state; scalar_t__ pool_guid; } ;
typedef TYPE_1__ spa_import_progress_t ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,char*) ;

__attribute__((used)) static int
spa_import_progress_show(struct seq_file *f, void *data)
{
 spa_import_progress_t *sip = (spa_import_progress_t *)data;

 seq_printf(f, "%-20llu %-14llu %-14llu %-12llu %s\n",
     (u_longlong_t)sip->pool_guid, (u_longlong_t)sip->spa_load_state,
     (u_longlong_t)sip->mmp_sec_remaining,
     (u_longlong_t)sip->spa_load_max_txg,
     (sip->pool_name ? sip->pool_name : "-"));

 return (0);
}
