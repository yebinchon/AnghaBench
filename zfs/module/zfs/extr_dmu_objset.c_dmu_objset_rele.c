
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objset_t ;


 int B_FALSE ;
 int dmu_objset_rele_flags (int *,int ,void*) ;

void
dmu_objset_rele(objset_t *os, void *tag)
{
 dmu_objset_rele_flags(os, B_FALSE, tag);
}
