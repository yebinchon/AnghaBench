
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_lock ;
 int rw_destroy (int *) ;

void
dmu_objset_fini(void)
{
 rw_destroy(&os_lock);
}
