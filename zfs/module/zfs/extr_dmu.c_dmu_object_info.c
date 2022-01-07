
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dnode_t ;
typedef int dmu_object_info_t ;


 int FTAG ;
 int dmu_object_info_from_dnode (int *,int *) ;
 int dnode_hold (int *,int ,int ,int **) ;
 int dnode_rele (int *,int ) ;

int
dmu_object_info(objset_t *os, uint64_t object, dmu_object_info_t *doi)
{
 dnode_t *dn;
 int err = dnode_hold(os, object, FTAG, &dn);

 if (err)
  return (err);

 if (doi != ((void*)0))
  dmu_object_info_from_dnode(dn, doi);

 dnode_rele(dn, FTAG);
 return (0);
}
