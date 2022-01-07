
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_LIST_HEAD (int *) ;
 int MUTEX_DEFAULT ;
 scalar_t__ kstat_id ;
 int kstat_module_list ;
 int kstat_module_lock ;
 int mutex_init (int *,int *,int ,int *) ;

int
spl_kstat_init(void)
{
 mutex_init(&kstat_module_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 INIT_LIST_HEAD(&kstat_module_list);
 kstat_id = 0;
 return (0);
}
