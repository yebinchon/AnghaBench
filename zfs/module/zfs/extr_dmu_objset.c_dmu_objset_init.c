
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RW_DEFAULT ;
 int os_lock ;
 int rw_init (int *,int *,int ,int *) ;

void
dmu_objset_init(void)
{
 rw_init(&os_lock, ((void*)0), RW_DEFAULT, ((void*)0));
}
