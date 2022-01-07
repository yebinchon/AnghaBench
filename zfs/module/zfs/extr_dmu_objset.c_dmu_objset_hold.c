
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objset_t ;


 int B_FALSE ;
 int dmu_objset_hold_flags (char const*,int ,void*,int **) ;

int
dmu_objset_hold(const char *name, void *tag, objset_t **osp)
{
 return (dmu_objset_hold_flags(name, B_FALSE, tag, osp));
}
